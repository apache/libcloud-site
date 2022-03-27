---
layout: post
title: Using the container abstraction API in 1.0.0-pre1
author: Anthony Shaw
tags:
  - news
  - containers
  - tutorial
---

## Background

Containers are the talk of the town, you can't escape an event or meetup without someone talking about containers. The lessons we
learnt with compute abstraction are applying widely with containers in 2016. APIs are not consistent between clouds, designs are not
standardised and yet, users are trying to consume multiple services.

We introduced Container-as-a-Service support in [1.0.0-pre1][1], a community pre-release with the intention of sparking feedback from 
the open-source community about the design and the implementation of 4 example drivers :  

* Docker
* Joyent Triton
* Amazon EC2 Container Service
* Google Kubernetes

In this tutorial we're going to explore how to do this:

<div class="imginline">
  <img src="/images/posts/2016-02-05-containers/container_cloud_example.png" class="img-responsive inline" />
  <p class="img-caption">Deploying containers across platforms.</p>
</div>

Pulling images from the Docker hub, deploying to Docker, Kubernetes and Amazon ECS then auditing them with a single query.

## Getting Started with 1.0.0-pre1

First off, let's install the new packages, you probably want to do this within a virtualenv if you're using Apache Libcloud for other projects. 

So run these commands at a Linux Shell to create a virtualenv called 'containers' and install the pre-release packages into that environment.

```bash
   virtualenv containers
   cd containers
   source bin/activate
   pip install apache-libcloud==1.0.0-pre1
```

Now you can start using this package with a test script, let's create one called containers.py

```bash
   touch containers.py
```

Using your favourite text editor, update that file to import the 1.0.0-pre1 libraries and the factory methods for instantiating containers.

```python
   from libcloud.container.providers import get_driver
   from libcloud.container.types import Provider
```

`get_driver` is a factory method as with all libcloud APIs, you call this method with the `Provider` that you want to instantiate. Our options are:

* `Provider.DOCKER` - Standalone Docker API
* `Provider.KUBERNETES` - Kubernetes Cluster endpoint
* `Provider.JOYENT` - Joyent Triton Public API
* `Provider.ECS` - Amazon EC2 Container Service

Calling `get_driver` will return a reference to the driver class that you requested. You can then instantiate that class into an object using the 
contructor. This is always a set of parameters for setting the host or region, the authentication and any other options.

```python
   driver = get_driver(Provider.DOCKER)
```

Now we can call our driver and get an instance of it called `docker_driver` and use that to deploy a container. For Docker you need the pem files on the server,
the host (IP or FQDN) and the port.

```python
   docker_driver = driver(host='https://198.61.239.128', port=4243,
             key_file='key.pem', cert_file='cert.pem')
```

Docker requires that images are available in the image database before they can be deployed as containers. With Kubernetes and Amazon ECS this step is not required
as when you deploy a container it carries out that download for you. 

```python
   image = driver.install_image('tomcat:8.0')
```

Now that Docker has the version 8.0 image of Apache Tomcat, you can deploy this as a container called `my_tomcat_container`. Tomcat runs on TCP/8080 by default so we 
want to bind that port for our container using an optional parameter `port_bindings`

```python
   bindings = { "22/tcp": [{ "HostPort": "11022" }] }
   container = driver.deploy_container('my_tomcat_container', image, port_bindings=bindings)
```

This will have deployed the container and started it up for you, you can disable the automatic startup by using `start=False` as a keyword argument. You can now call upon this container and 
run methods, `restart`, `start`, `stop` and `destroy`.

For example, to blow away that test container: 

```python
   container.destroy()
```

## Crossing the streams; calling Kubernetes and Amazon EC2 Container Service

With Docker we saw that we needed to "pull" the image before we deployed it. Kubernetes and Amazon ECS don't have that requirement, but as a safeguard you can query the Docker Hub API using a 
utility class provided

```python
   from libcloud.container.utils.docker import HubClient
   hub = HubClient()
   image = hub.get_image('tomcat', '8.0')
```

Now `image` can be used to deploy to any driver instance that you create. Let's try that against Kubernetes and ECS.

### Amazon ECS

Before you run this example, you will need an API key and the permissions for that key to have the `AmazonEC2ContainerServiceFullAccess` role. `ap-southeast-2` is my nearest region, but you can 
swap this out for any of the Amazon public regions that have the ECS service available. 

```python
   e_cls = get_driver(Provider.ECS)
   ecs = e_cls(access_id='SDHFISJDIFJSIDFJ',
               secret='THIS_IS)+_MY_SECRET_KEY+I6TVkv68o4H',
               region='ap-southeast-2')
```

ECS and Kubernetes both support some form of grouping or clustering for your containers. This is available as `create_cluster`, `list_cluster`.

```python
   cluster = ecs.create_cluster('default')
   container = ecs.deploy_container(
            cluster=cluster,
            name='hello-world',
            image=image,
            start=False,
            ex_container_port=8080, ex_host_port=8080)
```

This will have deployed a task definition in Amazon ECS with a single container inside, with a cluster called 'main' and deployed the tomcat:8.0 image from the Docker hub to that region. 

Check out the [ECS Documentation][2] for more details.

### Kubernetes

Kubernetes authentication is currently only implemented for None (off) and Basic HTTP authentication. Let's use the [basic HTTP authentication method][4] to connect.

```python

k_cls = get_driver(Provider.KUBERNETES)

kubernetes = k_cls(key='my_username',
                   secret='THIS_IS)+_MY_SECRET_KEY+I6TVkv68o4H',
                   host='126.32.21.4')
cluster2 = kubernetes.create_cluster('default')
container2 = kubernetes.deploy_container(
            cluster=cluster,
            name='hello-world',
            image=image,
            start=False)
```

## Wrapping it up

Now, let's wrap that all up by doing a list comprehension across the 3 drivers to get a list of all containers and print their ID's and Names. Then delete them.

```python
containers = [conn.list_containers() for conn in [docker, ecs, kubernetes]]
for container in containers:
    print("%s : %s" % (container.id, container.name))
    container.destroy()

```

### About the Author

Anthony Shaw is on the PMC for Apache Libcloud, you can follow Anthony on Twitter at [@anthonypjshaw](https://twitter.com/anthonypjshaw).


[1]: http://libcloud.apache.org/blog/2016/01/26/libcloud-1-0-0-pre1-released.html
[2]: http://libcloud.readthedocs.org/en/latest/container/drivers/ecs.html
[3]: http://libcloud.readthedocs.org/en/latest/container/drivers/kubernetes.html
[4]: http://kubernetes.io/v1.1/docs/admin/authentication.html

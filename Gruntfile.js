/* jshint node: true */

module.exports = function(grunt) {
  'use strict';

  // load all grunt tasks
  require('load-grunt-tasks')(grunt, {'scope': 'devDependencies'});

  // Project configuration.
  grunt.initConfig({
    jshint: {
      options: {
        jshintrc: '.jshintrc'
      },
      all: [
        'Gruntfile.js',
        'source/_assets/js/*.js',
      ]
    }
  });

  grunt.registerTask('lint', ['jshint']);

  grunt.registerTask('default', ['lint']);
};

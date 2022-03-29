/* global jQuery: true */

var LINE_TOOLTIPS = {
  'compute-1': {
    '1': 'Import libcloud type we need',
    '2': [
      'Import "get_driver" method for obtaining a reference to the driver ',
      ' class.'
    ],

    '4': [
      'Obtain a reference to the provider driver class. <br /><br />Keep in ',
      'mind that Libcloud supports more than 30 providers total and ',
      'Provider.RACKSPACE constant can be replaced with a provider constant ',
      'of any other of the supported providers.'
    ],
    '5': [
      'Instantiate the driver with your provider credentials. ',
      'Rackspace driver supports multiple regions so in this case, "region" ',
      'argument is used as well.'
    ],

    '7': [
      'List all the available sizes. <br /><br />In Libcloud, size ',
      'represents a server hardware configuration. Usually this is the amount ',
      'of the available RAM, bandwidth, CPU speed and disk size. Most of ',
      'the drivers also expose an hourly price (in US dollars) for the Node ',
      'of this size.'
    ],
    '8': [
      'List all the available images.<br /><br />In Libcloud, image ',
      'represents an operating system image.'
    ],

    '10': 'Select a size to use.',
    '11': 'Select an image to use.',

    '13': 'Create a node using a previously selected size and image.',
    '14': 'Print representation of the created Node object.'
  },
  'dns-1': {
    '1': 'Import libcloud types we need',
    '2': [
      'Import "get_driver" method for obtaining a reference to the driver ',
      ' class.'
    ],

    '4': 'Obtain a reference to the provider driver class.',
    '5': 'Instantiate the driver with your provider credentials.',

    '7': 'List all the available zones (domains) on this account.',
    '8': 'Select the zone to operate on.',

    '10': [
      'Create a new "A" record with a name of "www" and a value of ',
      '"127.0.0.1" under the selected zone.'
    ],
    '11': 'Print representation of the created Record object.'
  }
};

jQuery(document).ready(function($) {
  $('.example code div[class]').on('mouseover click', function(event) {
    var tooltips, lineNumber, content, parentElem, key, options, tooltip,
        hasTooltip;

    parentElem = $(this).closest('div.example');
    key = parentElem.attr('data-example');

    tooltips = LINE_TOOLTIPS[key];

    if (!tooltips) {
      return;
    }

    hasTooltip = $(this).attr('title') !== undefined;
    lineNumber = $(this).attr('class').replace('line-', '');
    tooltip = tooltips[lineNumber];

    if (!tooltip) {
      // No tool tip for this line.
      return;
    }

    if (hasTooltip) {
      // Popover for this line has already been created.
      if (event.type === 'click') {
        $(this).popover('toggle');
      }

      return;
    }


    if (tooltip instanceof Array) {
      content = tooltip.join('');
    }
    else {
      content = tooltip;
    }

    options = {
      'content': content,
      'placement': 'auto right',
      'html': true,
      'trigger': 'hover',
      'container': 'body'
    };

    $(this).popover(options);
    $(this).popover('show');
  });
});

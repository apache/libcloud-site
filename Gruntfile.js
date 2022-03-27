/* jshint node: true */

module.exports = function(grunt) {
  'use strict';

  // load all grunt tasks
  require('load-grunt-tasks')(grunt, {'scope': 'devDependencies'});

  // Project configuration.
  grunt.initConfig({
    csslint: {
      options: {
        csslintrc: '.csslintrc'
      },
      src: [
        'source/_assets/css/*.css',
      ]
    },

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

  grunt.registerTask('lint', ['csslint', 'jshint']);

  grunt.registerTask('default', ['lint']);
};

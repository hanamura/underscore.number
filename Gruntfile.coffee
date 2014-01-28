module.exports = (grunt) ->
	grunt.initConfig
		coffee:
			js:
				src: 'src/*.coffee'
				dest: 'underscore.number.js'

		uglify:
			js:
				src: 'underscore.number.js'
				dest: 'underscore.number.min.js'

		watch:
			files: 'src/*.coffee'
			tasks: 'default'

	grunt.loadNpmTasks 'grunt-contrib-coffee'
	grunt.loadNpmTasks 'grunt-contrib-uglify'
	grunt.loadNpmTasks 'grunt-contrib-watch'
	grunt.registerTask 'default', [
		'coffee:js',
		'uglify:js',
	]

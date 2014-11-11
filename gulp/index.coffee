gulp = require 'gulp'
requireDir = require 'require-dir'
plugins = require('gulp-load-plugins')({
  pattern: '*',
  camelize: true,
  lazy: true
})

config = {
  pkg:
    folder: './'
    file: 'package.json'
  changelog:
    folder: './'
    file: 'CHANGELOG.md'
}

for name, task of requireDir('tasks')
  task(gulp, plugins, config)

gulp.task "patch", ["tagPatch", "changelog"]
gulp.task "minor", ["minorPatch", "changelog"]
gulp.task "major", ["majorPatch", "changelog"]
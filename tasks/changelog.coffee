gulp = require 'gulp'
filter = require 'gulp-filter'
coffee = require 'gulp-coffee'
debug = require 'gulp-debug'
git = require 'gulp-git'
bump = require 'gulp-bump'
tagVersion = require 'gulp-tag-version'
run = require 'gulp-run'
fs = require 'fs'

getPackageJson = ->
  return JSON.parse(fs.readFileSync('./package.json', 'utf8'))

getPackageJsonVersion = ->
  packageJson = getPackageJson()
  return packageJson.version

tag = (level) ->
  comment = 'chg: add ' + level + ' version !ver'

  gulp
    .src('./package.json')
    #.pipe(debug())
    .pipe(bump({type: level}))
    .pipe(gulp.dest('./'))
    .pipe(git.commit(comment))
    .pipe(filter('package.json'))
    .pipe(tagVersion())

gulp.task "changelog", ->
  cmd = 'gitchangelog > CHANGELOG.md'
  comment = 'chg: doc: update changelog'

  gulp
    .src('./CHANGELOG.md')
    #.pipe(debug())
    .pipe(run(cmd, {verbosity: 1}))
    .pipe(git.add())
    .pipe(git.commit(comment))

gulp.task "tagPatch", ->
  tag "patch"

gulp.task "minorPatch", ->
  tag "minor"

gulp.task "majorPatch", ->
  tag "major"

gulp.task "patch", ["tagPatch", "changelog"]
gulp.task "minor", ["minorPatch", "changelog"]
gulp.task "major", ["majorPatch", "changelog"]
module.exports = (g, p, c)->
  tag = (level) ->
    file = c.pkg.file
    dest = c.pkg.folder

    src = dest + file

    comment = 'chg: add ' + level + ' version !ver'

    g.src(src)
      #.pipe(p.debug())
      .pipe(p.bump({type: level}))
      .pipe(g.dest(dest))
      .pipe(p.git.commit(comment))
      .pipe(p.filter(file))
      .pipe(p.tagVersion())

  g.task "tagPatch", ->
    tag "patch"

  g.task "minorPatch", ->
    tag "minor"

  g.task "majorPatch", ->
    tag "major"
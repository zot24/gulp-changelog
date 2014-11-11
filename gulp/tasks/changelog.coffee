module.exports = (g, p, c)->
  g.task "changelog", ->
    file = c.changelog.file
    dest = c.changelog.folder

    src = dest + file

    cmd = 'gitchangelog > ' + file
    comment = 'chg: doc: update changelog'

    g.src(src)
      #.pipe(p.debug())
      .pipe(p.run(cmd, {verbosity: 1}))
      .pipe(p.git.add())
      .pipe(p.git.commit(comment))
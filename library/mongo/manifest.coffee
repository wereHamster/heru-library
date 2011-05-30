
{ Manifest, Action } = require 'heru'
class module.exports extends Manifest
  @version = '1.8.1'

  'user:mongo': ->
    group: 'daemon', home: '/var/lib/mongo'

  'path:/etc/mongo.conf': ->
    type: 'file', mode: 0644, user: 'root', group: 'root', action: ->
      Action.Render 'mongo.conf'

  'path:/usr/bin/mongo{,d}': ->
    type: 'file', mode: 0755, user: 'root', group: 'root', action: ->
      source = @expand 'http://downloads.mongodb.org/src/mongodb-src-r{{ version }}.tar.gz'
      Action.Install source, command: 'make install PREFIX=/usr'

  'path:/etc/perp/mongo/rc.main': ->
    type: 'file', mode: 0755, user: 'root', group: 'root', action: ->
      Action.Render 'rc.main'


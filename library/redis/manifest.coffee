
{ Manifest, Action } = require 'heru'
class module.exports extends Manifest
  @version = '2.2.4'

  'user:redis': ->
    group: 'daemon', home: '/var/lib/redis'

  'path:/etc/redis.conf': ->
    type: 'file', mode: 0644, user: 'root', group: 'root', action: ->
      Action.Render 'redis.conf'

  'path:/usr/bin/redis-{benchmark,check-{aof,dump},cli,server}': ->
    type: 'file', mode: 0755, user: 'root', group: 'root', action: ->
      source = @expand 'http://redis.googlecode.com/files/redis-{{ version }}.tar.gz'
      Action.Install source, command: 'make install PREFIX=/usr'

  'path:/etc/perp/redis/rc.main': ->
    type: 'file', mode: 0755, user: 'root', group: 'root', action: ->
      Action.Render 'rc.main'


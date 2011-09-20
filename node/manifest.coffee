
{ Manifest, Action } = require 'heru'
class module.exports extends Manifest
  @version = '0.4.12'

  'path:/usr/bin/node': ->
    type: 'file', mode: 0755, user: 'root', group: 'root', action: ->
      source = @expand 'http://nodejs.org/dist/node-v{{ version }}.tar.gz'
      Action.Install source, command: 'make install'


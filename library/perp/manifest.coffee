
{ Manifest, Action } = require 'heru'
class module.exports extends Manifest
  @version = '2.04'

  'path:/etc/perp': ->
    type: 'dire', mode: 0755, user: 'root', group: 'root'

  'path:/usr/sbin/perp{d,ls,stat}': ->
    type: 'file', mode: 0755, user: 'root', group: 'root', action: ->
      source = @expand 'http://b0llix.net/perp/distfiles/perp-{{ version }}.tar.gz'
      Action.Install source, command: 'make install'


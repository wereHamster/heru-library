
{ Manifest, Action } = require 'heru'
class module.exports extends Manifest

  'path:/etc/ssh/sshd_config': ->
    type: 'file', mode: 0644, user: 'root', group: 'root', action: ->
      Action.Render 'sshd_config'


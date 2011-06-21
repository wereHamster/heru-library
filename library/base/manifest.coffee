
{ Manifest, Action } = require 'heru'
class module.exports extends Manifest

  'user:root': ->
    uid: 0, home: '/root'


{ Manifest, Action } = require 'heru'
class module.exports extends Manifest

  # -------------------------------------------------------------------------
  # Groups
  # -------------------------------------------------------------------------

  'group:wheel':    -> gid: 0

  'group:admin':    -> gid: 80
  'group:daemon':   -> gid: 1
  'group:mail':     -> gid: 6
  'group:operator': -> gid: 5
  'group:staff':    -> gid: 20


  # -------------------------------------------------------------------------
  # Users
  # -------------------------------------------------------------------------

  'user:root': ->
    uid: 0, group: 'wheel', home: '/var/root'

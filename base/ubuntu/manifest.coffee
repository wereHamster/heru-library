
{ Manifest, Action } = require 'heru'
class module.exports extends Manifest

  # -------------------------------------------------------------------------
  # Groups
  # -------------------------------------------------------------------------

  'group:root':     -> gid: 0

  'group:admin':    -> gid: 111
  'group:daemon':   -> gid: 1
  'group:mail':     -> gid: 8
  'group:operator': -> gid: 37
  'group:staff':    -> gid: 50


  # -------------------------------------------------------------------------
  # Users
  # -------------------------------------------------------------------------

  'user:root': ->
    uid: 0, group: 'root', home: '/root'


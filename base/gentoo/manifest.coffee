
{ Manifest, Action } = require 'heru'
class module.exports extends Manifest

  # -------------------------------------------------------------------------
  # Groups
  # -------------------------------------------------------------------------

  'group:root':     -> gid: 0

# 'group:admin':    -> gid:
  'group:daemon':   -> gid: 2
  'group:mail':     -> gid: 12
# 'group:operator': -> gid:
# 'group:staff':    -> gid:


  # -------------------------------------------------------------------------
  # Users
  # -------------------------------------------------------------------------

  'user:root': ->
    uid: 0, group: 'root', home: '/root'


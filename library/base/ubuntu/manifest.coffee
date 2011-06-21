
{ Manifest, Action } = require 'heru'
class module.exports extends Manifest

  'group:daemon': ->
    gid: 1

  'group:mail': ->
    gid: 8

  'group:staff': ->
    gid: 50

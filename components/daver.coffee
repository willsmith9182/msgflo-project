# To work in msgflo-nodejs source tree
try
  msgflo = require 'msgflo-nodejs'
catch e
  msgflo = require '..'

daver = (client, role) ->

  definition =
    component: 'msgFlo/daver'
    icon: 'cog'
    label: 'ererw'
    inports: [
      id: 'in'
      type: 'any'
    ]
    outports: [
      id: 'out'
      type: 'any'
    ]
  process = (inport, indata, callback) ->
    return callback 'out', null, indata
  return new msgflo.participant.Participant client, definition, process, role


module.exports = daver

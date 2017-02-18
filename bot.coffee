tmi = require('tmi.js')
options = 
  options: debug: true
  connection:
    cluster: 'aws'
    reconnect: true
  identity:
    username: 'rscodesbot'
    password: ''
  channels: [ 'channel names' ]
client = new (tmi.client)(options)
client.connect()

client.on 'connected', (address, port) ->
  client.action 'channel name', 'yo wassup my dawg'
  return

client.on 'chat', (channel, user, message, self) ->
  if message == '??ping'
    client.action 'channel name', 'p0ng'
    return




require "gerencianet"
require_relative "./credentials"

options = {
  client_id: CREDENTIALS::CLIENT_ID,
  client_secret: CREDENTIALS::CLIENT_SECRET,
  sandbox: true
}

params = {
  id: 1000
}

body = {
  description: "This subscription is about a service"
}

gerencianet = Gerencianet.new(options)
puts gerencianet.create_subscription_history(params: params, body: body)

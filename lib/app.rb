require 'sinatra'
require 'shotgun'
configure(:development) { set :session_secret, "something" }

get '/' do
  "Hello World"
end

get '/secret' do
  "it's a secret!"
end

get '/secret2' do
  "it's a secret2!"
end

get '/secret3' do
  "it's a secret3!"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"][rand(3)]
  erb(:cat)
end

post '/named-cat' do
  @name = params[:name]
  erb(:cat)
end

get '/form' do
  erb(:form)
end
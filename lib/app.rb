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

get '/cat' do
  erb :cat
end

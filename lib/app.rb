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
  "<div><img src='http://bit.ly/1eze8aE'><div>"
end

div {
  border: 0.5rem outset pink;
  outline: 0.5rem solid khaki;
  box-shadow: 0 0 0 2rem skyblue;
  border-radius: 12px;
  font: bold 1rem sans-serif;
  margin: 2rem;
  padding: 1rem;
  outline-offset: 0.5rem;
}
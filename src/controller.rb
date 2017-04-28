require 'sinatra/base'

class Controller < Sinatra::Base
  set :sessions, true

  get '/sessions/new' do
    '<form action="/sessions" method="post">' +
    '<label for="name">Name</label><input type="text" name="name" id="name" />' +
    '<input type="submit" value="Register" />' +
    '</form>'
  end

  post '/sessions' do
    "Your name is #{params[:name]}"
  end
end

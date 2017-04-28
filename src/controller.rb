require 'sinatra/base'

class Controller < Sinatra::Base
  set :sessions, true

  get '/sessions/new' do
  "well you wouldn't want to do this"
    '<form action="/sessions" method="post">' +
    '<label for="name">Name</label><input type="text" name="name" id="name" />' +
    '<input type="submit" value="Register" />' +
    '</form>'
  end

  post '/sessions' do
    puts 'hello this is fine tho'
    "Your name is #{params[:name]}"
  end
end

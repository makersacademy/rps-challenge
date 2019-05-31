require 'sinatra'

class Game < Sinatra::Base
  enable :sessions

  get '/register' do
    erb :index
  end

  post '/play' do
    p @registeredplayer = params[:registeredplayer]
    p @dropdown_value = params[:rock]
    erb :play
  end

end
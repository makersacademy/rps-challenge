require 'sinatra/base'

class Game < Sinatra::Base

  # get '/' do
  #   'Hello User!'
  # end

  get '/' do
    erb :index
  end

  post '/welcome' do
    @player_name = params[:player_name]
    erb :welcome
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end

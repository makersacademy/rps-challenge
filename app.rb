require 'sinatra/base'

class Game < Sinatra::Base
  get '/' do
    erb :homepage
    #'Rock, Paper, Scissors'
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end

  run! if app_file == $0
end
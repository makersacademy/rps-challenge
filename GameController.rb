require 'sinatra/base'

class GameController < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player_name = params[:player_name]
    erb(:game)
  end

  post '/fight' do
    @player_weapon = params[:weapon]
    erb(:fight)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

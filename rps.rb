require 'sinatra/base'
require './lib/rps_game'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    RpsGame.set_instance params[:player_name]
    @game = RpsGame.instance
    erb :play
  end

  post '/attack' do
    @attack = params[:attack]
    redirect '/game_over'
  end

  get '/game_over' do
    erb :game_over
    #call game_over? method to determine whether or not to render a 'win' or 'lose' view
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

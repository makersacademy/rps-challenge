require 'sinatra'
require './lib/game'

class RpsApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $game = Game.new(Player.new(params[:player]))
    redirect '/play'
  end

  get '/play' do
    @player = $game.player
    erb(:play)
  end

  get '/result' do
    @player_weapon = params[:player_selection]
    @computer_selection = $game.play(@player_weapon)
    erb $game.result
  end

  run! if app_file == $0

end

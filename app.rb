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

  get '/in_play' do
    p params
    @player_weapon = params[:player_selection]
    @computer_selection = :paper
    erb :result
  end

  # get '/result' do
  #   @player_weapon = $game.play(params[:player_selection])
  #   erb :result
  # end

  run! if app_file == $0

end

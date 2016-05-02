require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rock_paper_scissor < Sinatra::Base

  before do
    @game = Game.instance
  end

  #start the game
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.create player_1, player_2
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/calculate' do
    @game.on params[:choice]
    redirect '/game_on'
  end

  get '/game_on' do
    @game
    erb :game_on
  end

  run! if app_file == $0
end

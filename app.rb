require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name], params[:computer].empty?)
    if params[:computer].empty?
      player_2 = Player.new("Computer", params[:computer].empty?)
    else
      player_2 = Player.new(params[:player_2_name], params[:computer].empty?)
    end
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/weapon' do
    @game = $game
    @game.player_1.choose_weapon(params[:weapon])
    redirect '/weapon'
  end

  get '/weapon' do
    @game = $game
    erb :weapon
  end

  post '/computer' do
    @game = $game
    @game.player_2.choose_weapon(@game.player_2.weapon_choices[Kernel.rand(0..2)])
    redirect '/result'
  end

  get '/result' do
    @game = $game
    @game.outcome
    erb :result
  end

  run! if app_file == $0
end

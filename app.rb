require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new('Computer')
    $game = Game.new( player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    game
    erb :play
  end

  post '/move' do
    p params
    $player_move = game.player_1_move(params[:move])
    $comp_move = game.player_2_move
    redirect '/game_over'
  end

  get '/game_over' do
    @result = game.winner(player_move, comp_move)
    erb :game_over
  end


  helpers do
    def game
      @game ||= $game
    end

    def player_move
      @player_move ||= $player_move
    end

    def comp_move
      @comp_move ||= $comp_move
    end
  end

  run! if app_file == $0
end

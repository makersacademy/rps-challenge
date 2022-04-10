require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/result'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  helpers do
    def current_game
      Game.find(session[:game_id])
    end

    def add_game(game)
      id = game.object_id
      Game.add(id, game)
      session[:game_id] = id
    end
  end

  get '/' do 
    erb(:index)
  end

  # Single Player

  post '/name' do
    player = Player.new(params[:name])
    game = Game.new(player)
    add_game(game)
    redirect '/game' 
  end

  get '/game' do
    @game = current_game
    erb(:game)
  end

  post '/move' do 
    @game = current_game
    @game.player.choose(params[:move])
    @game.computer_move
    redirect '/result'
  end

  get '/result' do
    @game = current_game
    player = @game.player
    player2 = @game.player2
    @result = Result.new(player, player2)
      if @result.winner == player
        @game.add_win
      elsif @result.winner == player2 
        @game.add_loss
      else 
        @game.add_round
      end
    erb(:result)
  end

  # Multiplayer

  post '/multi_name' do
    player = Player.new(params[:name1])
    player2 = Player.new(params[:name2])
    game = Game.new(player, player2)
    add_game(game)
    redirect '/game' 
  end

  post '/multi_move' do 
    @game = current_game
    if @game.player.move.nil?
      @game.player.choose(params[:move])
      redirect '/game'
    else
      @game.player2.choose(params[:move])
      redirect '/result'
    end
  end

  post '/reset' do
    @game = current_game
    @game.player.reset 
    redirect '/game'
  end

  run! if app_file == $0
end

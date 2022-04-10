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
    computer = @game.player2
    @result = Result.new(player, computer)
    erb(:result)
  end

  run! if app_file == $0
end

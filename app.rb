require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player.rb'
require_relative './lib/game.rb'
require_relative './lib/result.rb'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do 
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    $game = Game.new(player)
    redirect '/game' 
  end

  get '/game' do
    @game = $game
    erb(:game)
  end

  post '/move' do 
    @game = $game
    @game.player.choose(params[:move])
    @game.computer_move
    redirect '/result'
  end

  get '/result' do
    @game = $game
    player = @game.player
    computer = @game.computer
    @result = Result.new(player, computer)
    erb(:result)
  end

  run! if app_file == $0
end
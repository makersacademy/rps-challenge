require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class RPSgame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  # our routes would go here
  get '/' do
    erb :index
  end

  post '/marketeer' do
    player = Player.new(params[:marketeer]) 
    opponent = Player.new("Angelica Pickles")
    $game = Game.new(player, opponent)
    @game = $game
    erb :play
  end

  post '/rock' do
    @game = $game
    @game.player.set_move(@game.player, "rock")
    redirect '/move'
  end  

  post '/paper' do
    @game = $game
    @game.player.set_move(@game.player, "paper")
    redirect '/move'
  end

  post '/scissors' do
    @game = $game
    @game.player.set_move(@game.player, "scissors")
    redirect '/move'
  end 
  
  get '/move' do
    @game = $game
    @game.opponent.auto_move(@game.opponent)
    @game.get_winner(@game.player, @game.opponent)
    erb :move
  end  

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end

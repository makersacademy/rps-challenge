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

  post '/player' do
    player = Player.new(params[:marketeer]) 
    opponent = Player.new("Angelica Pickles")
    $game = Game.new(player, opponent)
    @game = $game
    erb :choose
  end

  get '/choice' do
    @game = $game
    choice = params[:choice]
    @game.player.set_move(@game.player, choice)
    redirect '/playgame'
  end  

  get '/playgame' do
    @game = $game
    @game.opponent.auto_move(@game.opponent)
    @game.results
    erb :playgame
  end  

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end

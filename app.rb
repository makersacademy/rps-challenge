require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions
  configure(:development) { set :session_secret, "something" }

  get '/' do
    erb :index
  end

  post '/info' do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.new($player, Computer.new)
    @player_move = @game.player.move(params[:option])
    @computer_choice = @game.computer.computer_move
    erb :play
  end

end

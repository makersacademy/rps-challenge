require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'
require './lib/game' #just added this

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    computer = Computer.new(params[:computer_name])
    @game = Game.create(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/rps' do
    @game = Game.instance
    player_move = params[:player_move]
    @game.player.select_move(player_move)
    @game.computer.computer_move
    redirect '/end_of_round'
  end

  get '/end_of_round' do
    @game = Game.instance
    erb :end_of_round 
  end

 post '/new-game' do
  @game.reset
  redirect '/play'
 end

end

require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'
require './lib/rps_results'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do 
    session[:name] = params[:name]
    redirect '/play'
  end 

  get '/play' do 
    player = Player.new(session[:name])
    computer = Computer.new
    @game = Game.create(player, computer)
    erb :play
  end 

  post '/result' do 
    @game.player.make_move(params[:move])
    @result = Rps_Results.new.winner(@game.player.move, @game.computer.move)
    @game.player.icon(@game.player.move)
    @game.computer.icon(@game.computer.move)
    erb :result
  end 

  run! if app_file == $0
end

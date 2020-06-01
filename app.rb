require 'sinatra/base'
require 'sinatra/reloader'
require './lib/players.rb'
require './lib/computer.rb'
require './lib/game.rb'


class RPS < Sinatra::Base
 
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/player' do
    player = Player.new(params[:name])
    opponent = Computer.new
    @game = Game.create(player, opponent)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/player_moves' do
    @game.player.choose(params[:move])
    redirect '/move'
  end
        
  get '/move' do
    erb :move
  end

  get '/winner' do
   @game.select_winner
    erb :winner
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

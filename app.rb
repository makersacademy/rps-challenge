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
    erb(:index)
  end

  post '/player_name' do
    player = Players.new(params[:name])
    opponent = Computer.new
    @game = Game.create(player, opponent)
    redirect '/play'
  end

  get '/play' do
    erb(:play) 
  end

  get '/player_move' do
        @game.player.choose(params[:player_move])
    redirect '/result'
  end

   get '/result' do
    @game.select_winner
    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

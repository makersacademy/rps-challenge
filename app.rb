require 'sinatra'
require 'pry'
require './lib/game'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base

  enable :sessions

   # start the server if ruby file executed directly
   run! if app_file == $0

   get '/' do
    erb(:index)
   end

  post '/names' do
    player = Player.new(params[:player_name])
    Game.create(player)
    redirect '/play'
  end

  before { @game = Game.instance }
  
  get '/play' do
    erb(:play)
  end

  post '/move' do
    @game.player.move=(params[:move])
    redirect '/result'
  end

  get '/result' do
    @winner = @game.winner
    erb(:result)
  end
   
end
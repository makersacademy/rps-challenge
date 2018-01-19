require 'sinatra'
require 'pry'
require './lib/game'
require './lib/player'

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
    session[:player_move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @player_move = session[:player_move]
    erb(:result)
  end
   
end
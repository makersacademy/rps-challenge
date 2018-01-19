require 'sinatra'
require 'pry'
require './lib/game'

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
    @player_name = @game.player.name
    erb(:play)
  end
   
   
end
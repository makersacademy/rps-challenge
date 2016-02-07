require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb(:index)
  end
  
  post '/name' do
    player = Player.new(params[:name].capitalize)
    session['game'] = Game.new(player)
    redirect '/play'
  end
  
  get '/play' do
    @game = session['game']
    erb(:play)
  end
  
  get '/game' do
    @game = session['game']
    @computer_choice = @game.computers_choice
    @choice = @game.players_choice(params[:choice].to_sym)
    @winner = @game.winner
    erb(:game)
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
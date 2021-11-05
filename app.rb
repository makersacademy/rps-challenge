require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  register Sinatra::Reloader
  enable :sessions

  get '/' do 
    erb :index
  end 

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new("Computer")
    @pc_choice = player2.choose_random
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do 
    @game = Game.instance
    erb :play
  end

  post '/result' do
    @game = Game.instance
    choice = params[:choice]
    @outcome = @game.calculate_winner(choice, @pc_choice)
    erb :result
  end

  run! if app_file == $0
end

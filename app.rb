require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base
  enable :sessions

  before do 
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/names' do 
    player_1 = Player.new(params[:player_1_name])
    Game.new_game(player_1)
    redirect '/play'
  end

  get '/play' do 
    erb :play
  end

  post '/choose' do 
    @game.choose(params[:choice])
    @game.computer_choice
    redirect '/result'
  end

  get '/result' do 
    @game.winning_hand
    @game.winner
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

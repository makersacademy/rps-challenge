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
    choice_1 = params[:choose]
    choice_2 = params[:choose]
    redirect '/result'
  end

  get '/result' do 
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

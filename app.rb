require 'sinatra/base'
require './lib/player1.rb'
require './lib/player2.rb'
require './lib/game.rb'

class Rps < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  
  post '/play' do
    Player1.instance.naming(params[:player_1])
    Player2.instance.naming(params[:player_2])
    @game = Game.create_new_game(Player1.instance, Player2.instance)
    redirect '/play'
  end
  
  before do
    @game = Game.game_instance
  end
  
  get '/play' do
    erb :play
  end
  
  post '/result' do
    Player1.instance.choice(params[:choice_player_1])
    Player2.instance.choice(params[:choice_player_2])
    @game.register_type(params[:game_type])
    redirect '/result'
  end
  
  get '/result' do
    @result_rps = @game.result_rps(Player1.instance.current_choice, Player2.instance.current_choice)
    erb :result
  end
  
  get '/play_subsequent' do
    erb :play_subsequent
  end
  
  post '/result_subsequent' do
    Player1.instance.choice(params[:choice_player_1])
    Player2.instance.choice(params[:choice_player_2])
    redirect '/result_subsequent'
  end
  
  get '/result_subsequent' do
    @result_rps = @game.result_rps(Player1.instance.current_choice, Player2.instance.current_choice)
    erb :result_subsequent
  end
  
  
  run! if app_file == $0
  
end

require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Application
  
  get '/' do
    erb :home
  end

  get '/1player' do
    erb :one_player
  end

  get '/2players' do
    erb :two_player
  end
  
  post '/single_player' do
    @game = Game.create(params[:name])
    redirect '/single_player_game'
  end

  post '/two_player' do
    @game = Game.create(params[:name1], params[:name2])
    redirect '/two_player_game'
  end
  
  before do
    @game = Game.instance
  end
  
  get '/single_player_game' do
    erb :single_play
  end
  
  post '/choice' do
    @game.player1.choose_weapon(params[:weapon])
    @game.play
    redirect '/results'
  end
  
  get '/results' do
    erb :results
  end
  
  get '/two_player_game' do
    erb :double_play_one
  end

  post '/choice1' do
    @game.player1.choose_weapon(params[:weapon])
    redirect '/player_two_choose'
  end
  
  get '/player_two_choose' do
    erb :double_play_two
  end

  post '/choice2' do
    @game.player2.choose_weapon(params[:weapon])
    @game.play
    redirect '/results'
  end
  
  run! if app_file == $0

end

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
    redirect '/game'
  end
  
  before do
    @game = Game.instance
  end
  
  get '/game' do
    erb :play
  end
  
  post '/choice' do
    @game.player1.choose_weapon(params[:weapon])
    @game.play
    redirect '/results'
  end
  
  get '/results' do
    erb :results
  end

  run! if app_file == $0

end

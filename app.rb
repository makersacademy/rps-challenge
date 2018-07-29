require 'sinatra'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions 
  # keeps state during requests

  before do
    @game = Game.instance
  end

  configure do
    set :public_folder, 'public'
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    @game = Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/next' do
    @game.player_1.attack_type(params[:attack_type])
    redirect '/next'
  end

  get '/next' do
    erb(:next)
  end

  post '/result' do
    @game.player_2.random_attack
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  post '/play_again' do
    player_1 = Player.new(@game.player_1.name)
    player_2 = Player.new(@game.player_2.name)
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end

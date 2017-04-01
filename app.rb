require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

enable :sessions
  
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/player_names' do
    player_1 = Player.new(params[:player_1], "human")
    player_2 = Player.new
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/orange-throat' do
    @player_1.choose_orange
  end
  
  get '/result' do
    @player_1 = $player_1
    @game.calculate_winner
    erb :result
  end

  run! if app_file == $0

end

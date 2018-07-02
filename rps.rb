require 'sinatra/base'
require './lib/comp_player2'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  # enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player1_name])
    comp = CompPlayer2.new
    @game = Game.create(player_1, comp)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/play' do
    @game.player_1.submit_choice(params[:move])
    redirect '/results'
  end

  get '/results' do
    erb :results
  end

  run! if app_file == $0

end

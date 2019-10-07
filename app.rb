require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :welcome_page
  end

  get '/one_player' do
    erb :one_player
  end

  get '/two_player' do
    erb :two_player
  end


  post '/start' do
    @player = Player.create(params[:player_1])
    @game = Game.create
    erb :start
  end

  post '/start_two_player' do
    @player = Player.create(params[:player_1], params[:player_2])
    @game = Game.create
    erb :start_two_player
  end

  before do
    @player = Player.instance
    @game = Game.instance
  end

  post '/player_two_turn' do
    @player.move = params[:move]
    erb :player_two_turn
  end

  post '/result' do
    @player.move = params[:move]
    erb :result
  end

  post '/two_player_result' do
    @player.move2 = params[:move2]
    erb :two_player_result
  end

  run! if app_file == $0

end

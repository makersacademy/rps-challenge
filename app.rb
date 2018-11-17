require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names_solo' do
    player_1 = Player.new(params[:solo_name])
    player_2 = Player.new
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  post '/names_multi' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2, true)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/player_1_move' do
    @game.player_1.move(params[:Choice])
    redirect '/player_2_go'
  end

  get '/player_2_go' do
    if @game.multi
      erb(:player_2)
    else
      @game.player_2.random_move
      redirect '/result'
    end
  end

  post '/player_2_move' do
    @game.player_2.move(params[:Choice])
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0

end

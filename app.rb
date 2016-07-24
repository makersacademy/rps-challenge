require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  before do
    @mode = session[:mode]
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/mode' do
    session[:mode] = params[:mode]
    redirect '/names'
  end

  get '/names' do
    erb :names
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    if @mode == "Singleplayer"
      player_2 = Ai.new
    else
      player_2 = Player.new(params[:player_2_name])
    end
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/battle' do
    @game.player_1.weapon = params[:player_1_weapon]
    if @mode == "Singleplayer"
      @game.player_2.choose_weapon
    else
      @game.player_2.weapon = params[:player_2_weapon]
    end
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

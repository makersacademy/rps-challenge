require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :main_title do
      erb :index
    end
  end

  get '/single_sign_in' do
    # TODO: refactor to render separate nested layouts
    @players = 1
    erb :main_title do
      erb :sign_in
    end
  end

  get '/multi_sign_in' do
    @players = 2
    erb :main_title do
      erb :sign_in
    end
  end

  post '/players' do
    if params[:player_2].nil?
      session[:game] = Game.single_player(params[:player_1])
    else
      session[:game] = Game.multi_player(params[:player_1], params[:player_2])
    end
    redirect '/player_1'
  end

  get '/player_1' do
    @game = session[:game]
    erb :play do
      erb :hud
    end
  end

  post '/player_1_choice' do
    @game = session[:game]
    @game.player(1).choose_weapon(params[:weapon])
    if @game.multiplayer?
      redirect '/player_2'
    else
      @game.player(2).choose_weapon
      redirect '/result'
    end
  end

  get '/player_2' do
    @game = session[:game]
    erb :play do
      erb :hud
    end
  end

  post '/player_2_choice' do
    @game = session[:game]
    @game.player(2).choose_weapon(params[:weapon])
    redirect '/result'
  end

  get '/result' do
    @game = session[:game]
    erb :play do
      erb @game.result
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

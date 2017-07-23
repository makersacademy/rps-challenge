require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :homepage
  end

  post '/mode' do
    session[:play_mode] = params[:play_mode]
    redirect '/enter-name'
  end

  get '/enter-name' do
    @play_mode = session[:play_mode]
    erb :enter_name
  end

  post '/one-player' do
    @game =
    Game.add((Player.new(params[:player_1_name])), (Player.new("Computer")), :one_player)
    redirect '/play'
  end

  post '/two-player' do
    @game =
    Game.add((Player.new(params[:player_1_name])), (Player.new(params[:player_2_name])), :two_player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/switch-turns' do
    @game.switch_turns
    redirect '/play'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end

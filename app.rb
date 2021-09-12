require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name_entered' do
    session[:player] = Player.new(params[:player_name])
    redirect '/pre'
  end

  get '/pre' do
    @player_name = session[:player].name
    erb :pre
  end

  post '/pre_play_vs_comp' do
    player1 = session[:player]
    comp = Computer.new
    @game = Game.create(player1, comp)
    redirect '/play_vs_comp'
  end

  get '/play_vs_comp' do
    @game = Game.instance
    erb :play_vs_comp
  end

  post '/choice' do
    @game = Game.instance
    @game.player1.choose_play(params[:choice])
    redirect '/play_vs_comp'
  end

  post '/pre_result' do
    # computer picks randomly
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end

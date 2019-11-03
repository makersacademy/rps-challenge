require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = Player.new(params[:player_name])
    @game = Game.create
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    @game = Game.instance
    erb :play
  end

  post '/weapon' do
    @game = Game.instance
    session[:player_choice] = @game.player_choice(params[:player_choice])
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    @player_choice = session[:player_choice]
    erb @game.result
  end

  run! if app_file == $0
end

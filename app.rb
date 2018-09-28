require 'sinatra/base'
require './lib/game'
class RpsWeb < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/play' do
    @game = Game.create(params[:shape])
    redirect '/endgame'
  end

  get '/endgame' do
    @game = Game.instance
    @computer_shape = @game.choice
    @player_shape = @game.player_shape
    @results = @game.result(@computer_shape)
    @isdraw = @game.draw?(@computer_shape)
    erb :endgame
  end

  run! if app_file == $0
end

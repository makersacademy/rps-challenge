require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
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

  post '/player_weapon' do
    session[:player_weapon] = params[:player_weapon]
    redirect '/result'
  end

  get '/result' do
    @player_weapon = session[:player_weapon]
    @game = Game.new(@player_weapon)
    @computer_weapon = @game.computer_weapon
    @result = @game.result
    erb :result
  end

  run! if app_file == $0
end

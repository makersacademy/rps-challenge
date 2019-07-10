require 'sinatra/base'
require_relative 'lib/player'
# require_relative 'lib/game'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player1] = Player.new(params[:player_1_name])
    redirect '/choose'
  end

  get '/choose' do
    @player1 = session[:player1]
    erb(:choose)
  end

  post '/select' do
    @player1 = session[:player1]
    @player1.select_weapon(params[:weaponpicker])
    session[:player1] = @player1
    redirect '/result'
  end

  get '/result' do
    @player1 = session[:player1]
    erb(:result)
  end

  run! if app_file == $0
end

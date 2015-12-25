require 'sinatra/base'
require './lib/user'
require './lib/weapon'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:user] = User.new(params[:user_name])
    redirect '/weapon'
  end

  get '/weapon' do
    @user = session[:user]
    erb(:weapon)
  end

  post '/play' do
    user = session[:user]
    session[:weapon] = Weapon.new(params[:weapon_type])
    session[:computer] = Computer.new
    session[:game] = Game.new(session[:weapon].type, session[:computer].weapon_choice)
    redirect '/game'
  end

  get '/game' do
    @game = session[:game]
    @user = session[:user]
    @computer = session[:computer]
    erb(:game)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

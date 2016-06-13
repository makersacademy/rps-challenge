require 'sinatra/base'
require './lib/computer'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
  	session[:player_name] = params[:player_name]
  	redirect '/play'
  end

  get '/play' do
  	@game = Game.new(session)
  	erb :play
  end

  post '/play' do
  	session[:player_weapon] = params[:player_weapon].downcase.to_sym
  	session[:computer_weapon] = Computer.new.weapon
  	redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


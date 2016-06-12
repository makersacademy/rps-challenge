require 'sinatra/base'

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
  	@player_name = session[:player_name]
  	@player_weapon = session[:player_weapon]
  	@computer_weapon = session[:computer_weapon]
  	erb :play
  end

  post '/play' do
  	session[:player_weapon] = params[:player_weapon]
  	session[:computer_weapon] = Computer.new.weapon
  	redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'super_secret'

  get '/' do
    erb :index
  end

  get '/names' do
    erb :play
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/weapon' do
    @player_name = session[:player_name]
    erb :weapon
  end

  #post'/game' do
  #  session[:player_weapon] = params[:weapon].downcase.to_sym
  #  redirect '/play'
  #end

  run! if app_file == $0
end

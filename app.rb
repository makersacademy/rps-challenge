require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @weapon_choise = session[:weapon_choise]
    @computer_choise = session[:computer_choise]
    erb :play
  end

  post '/play' do
    session[:weapon_choise] = params[:weapon_choise]
    session[:computer_choise]
    redirect '/play'
  end


  run! if app_file == $0
end
require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/weapons'
  end

  get '/weapons' do
    @player_name = session[:player_name]
    erb :weapons
  end

  post '/battle' do
    @player_name = session[:player_name]
    @player_weapon = params[:rock] || params[:paper] || params[:scissors]
    erb :battle
  end

  run! if app_file == $0
end

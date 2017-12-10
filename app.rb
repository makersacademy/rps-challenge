require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @weapon_choice = session[:weapon_choice]
    erb :play
  end

  post '/choice' do
    session[:weapon_choice] = "You have chosen #{params[:weapon_choice]}"
    redirect '/play'
  end

  run! if app_file == $0
end

require 'sinatra'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/choose-move'
  end

  get '/choose-move' do
    erb(:choose_move)
  end

  post '/move' do
    "#{session[:player_name]} played #{params[:move]}"
    
  end




  run! if app_file == $0
end
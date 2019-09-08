require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect to('/play')
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/choice' do
    session[:choice] = params[:choice]
    @choice = session[:choice]
    @player_name = session[:player_name]
    erb(:choice)
  end 

  post '/result' do
    @player_name = session[:player_name]
    @choice = session[:choice]
    erb(:result)
  end

  run! if app_file == $0
end

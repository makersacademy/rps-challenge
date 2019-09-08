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
    @choice = params[:choice]
    @player_name = session[:player_name]
    erb(:choice)
  end 

  run! if app_file == $0
end

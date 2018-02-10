require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb(:play)
  end

  post '/move' do
    @player_1 = session[:player_1]
    erb(:move)
  end

  post '/rock' do
    @player_1 = session[:player_1]
    erb(:rock)
  end

  post '/paper' do
    @player_1 = session[:player_1]
    erb(:paper)
  end

  run! if app_file == $0

end

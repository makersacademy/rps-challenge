require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player_name]
    erb(:play)
  end

  post '/move' do
    session[:move] = params[:move]
    redirect '/results'
  end

  get '/results' do
    @move = session[:move]
    erb(:results)
  end 

  run! if app_file == $0
end

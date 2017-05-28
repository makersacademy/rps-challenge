require 'sinatra/base'

class RPSWeb < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @shape = session[:shape]
    @opposing_player_shape = session[:opposing_player_shape]
    p 'opposing', @opposing_player_shape
    erb :play
  end

  post '/play' do
    session[:shape] = params[:shape]
    session[:opposing_player_shape] = :scissors
    redirect '/play'
  end

  run! if app_file == $0
end

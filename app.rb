require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base 
  enable :sessions

  configure :development do
    register Sinatra::Reloader 
  end

  get '/' do 
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @action = session[:action]
    @opponent_action = session[:opponent_action]
    erb :play
  end

  post '/play' do
    session[:action] = params[:action]
    session[:opponent_action] = :Rock
    redirect '/play'
  end

  run! if app_file == $0
end

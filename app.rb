require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/result'
  end

  get '/result' do
    @player_name = session[:player_name]
    @player_choice = session[:player_choice]
    erb(:result)
  end

end
require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    enable :sessions
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
    erb :play
  end

  get '/result' do
    @player_name = session[:player_name]
    @player_move = params.values.join('')
    erb :result
  end

  run! if app_file == $0
end

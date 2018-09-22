require 'sinatra/base'
require_relative './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, "enabled"
  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = session[:name].name
    @move = session[:move]
    erb :play
  end
  
  post '/move' do
    session[:move] = params[:move]
    redirect '/play'
  end
  
  run! if app_file == $0
end

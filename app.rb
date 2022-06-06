require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'


class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:username] = params[:names]
    redirect '/play'
  end

  get '/play' do 
    @username = session[:username]
    @game = $game
    erb :play
  end

  post '/rock' do
    session[:player] = Player.new(params[:player_option])
    redirect '/game'
  end 

  post '/paper' do
    session[:player] = Player.new(params[:player_option])
    redirect '/game'
  end

  post '/scissors' do 
    session[:player] = Player.new(params[:player_option])
    redirect '/game'
  end

  get '/game' do 
    
  end 

  run! if app_file == $0
end

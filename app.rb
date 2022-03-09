require 'sinatra/base'
require 'sinatra/reloader'
require_relative "./lib/rps"

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/play' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    erb :play
  end

  post '/outcome' do
    session[:answer] = params[:answer]
    redirect '/outcome'
  end

  get '/outcome' do
    @player = session[:player_name]
    @answer = session[:answer]
    game1 = Game.new(@answer)
    @computer_input = game1.computer_input
    @victory = game1.win_lose_draw
    erb :outcome
  end

end

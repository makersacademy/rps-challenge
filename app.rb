require 'sinatra/base'
require './lib/rps.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  # set :sessions, true
  # set :sessions_secret, "bloop"

  get '/' do
    erb :index
  end 

  post '/name' do
    $user_name = params[:player]
    redirect '/game'
  end 

  get '/game' do
    @name = $user_name
    erb :game
  end 

  post '/play' do
    $game = Rps.new
    $user_input = params[:ATTACK]
   redirect '/result'
  end 

  get '/result' do
     erb :play 
  end 

end
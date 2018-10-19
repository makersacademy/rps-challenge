require 'sinatra'
require 'sinatra/base'

class RPS < Sinatra::Base

  enable :session

  get '/' do
    erb(:index)
  end

  post '/game' do
    session['name'] = params[:name]
    @name = session['name']
    erb(:game)
  end

   post '/game/rock' do
     $user_move = "rock"
     erb(:win_or_lose)
   end

   post '/game/paper' do
     $user_move = "paper"
     erb(:win_or_lose)
   end

   post '/game/scissors' do
     $user_move = "scissors"
     erb(:win_or_lose)
   end

  run! if app_file == $0
end

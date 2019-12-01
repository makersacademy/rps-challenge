require 'sinatra/base'
require './lib/game'

class RpsGame < Sinatra::Base
  enable :sessions

  get '/' do
    "Time for some rock, paper and scissors!"
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

   get '/play' do
     @player_1_name = session[:player_1_name]
     erb :play
   end

   post '/rps' do
     session[:rps] = params[:rps]
     redirect '/game'
   end

   get '/game' do
     @rps = session[:rps]
     game = Game.new
     @machine_choice = game.generate
     erb :game
   end



# start the server if ruby file executed directly
run! if app_file == $0
end

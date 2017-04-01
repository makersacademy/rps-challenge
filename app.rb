require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

enable :sessions
  
   get '/' do
     erb :index
   end

   post '/player_names' do
     $player_1 = Player.new(params[:player_1], "human")
     $player_2 = Player.new("comp")
     redirect '/play'
   end

   get '/play' do
     @player_1 = $player_1
     erb :play
   end

   run! if app_file == $0

 end

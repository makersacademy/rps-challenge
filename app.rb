require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'
 class RPS < Sinatra::Base


   get '/' do
     erb :index
   end

   post '/play' do
     player1 = Player.new(params[:player_name])
     player2 = Computer.new
     @game = Game.create(player1,player2)
     erb :play
   end

   get '/play' do
     @game = Game.instance
     erb :play
   end

   post '/result' do
     @game = Game.instance
     @game.player1.weapon =  params[:player_choice]
     erb :result
   end


   run! if app_file == $0
  end

require 'sinatra/base'


 class RPS < Sinatra::Base


   get '/' do
     erb :index
   end

   post '/play' do
     player1 = Player.new(params[:player_name])
     player2 = Computer.new
     @game = Game.create(player1,player2)
     redirect '/play'
   end

   get '/play' do
     erb :play
   end


  end

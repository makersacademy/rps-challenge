require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSApp < Sinatra::Base
  get '/' do
    erb :index 
  end

  post '/play' do 
  	@player1 = Player.new(params[:player1])
  	@player2 = Player.new(params[:player2])
  	@playerno = params[:playerno]
  	@lizardspok = params[:lizardspok] ? true : false
    erb :play 
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end


# post '/names' do

#     @@game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))

#     @@status = []
#     redirect('/play')
#   end

#   get '/play' do
#     @player_1_hp = @@game.player_1.hp
#     @player_1_name = @@game.player_1.name
#     @player_2_hp = @@game.player_2.hp
#     @player_2_name = @@game.player_2.name
#     @game_status = @@status
#     erb(:game)
#   end

#   post '/attack' do
#     @@status << "#{params[:target]} got attacked"
#     if params[:target] == @@game.player_1.name
#       @@game.attack(@@game.player_1)
#     else
#       @@game.attack(@@game.player_2)
#     end
#     redirect('/play')
#   end


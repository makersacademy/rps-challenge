require 'sinatra'
require './lib/game.rb'


get '/' do
  erb :index
end

post '/names' do
   player_1 = Player.new(params[:player_1])
   @game = Game.create(player_1)
   redirect '/play'
 end

 before do
   @game = Game.instance
 end

 get '/play' do
   erb :play
 end

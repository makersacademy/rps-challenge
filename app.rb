require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

 class RPS < Sinatra::Base
   enable :sessions
   get '/' do
     erb :index
   end

post '/name' do
  # $game = Game.new(Player.new(params['player']), Computer.new(params['computer']))
  $game = Game.new(Player.new(params['player1']), Player.new(params['computer']))
      redirect '/play'

end

get '/play' do
     @game = $game
     erb :play
   end

get '/strike' do
  $game.take_turn
  @game = $game
  erb :strike
end

get '/continue' do
  $game.winner
  puts "finished"
end
end


   # get '/attack' do
   #      @player1 = session['player1']
   #      @player2 = session['player2']
   #
   #    end
   # get '/play' do
   #   erb :play
   # end

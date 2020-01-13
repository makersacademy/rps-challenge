require 'sinatra'
require './lib/game'

class RPS < Sinatra::Base

attr_reader :player, :choice, :choice2, :result

get '/' do
  erb :index
end

post '/play' do
  $player = params[:name]
  redirect '/play'
end

get '/play' do
  @player = $player
  erb :play
end

post '/result' do
  $choice = params[:choice]
  redirect '/result'
end

get '/result' do
  $game = Game.new($choice)
  @choice = $choice
  p @choice
  p @choice2
  @result = $game.game
  @choice2 = $game.move2
  p @result

  erb :result
end

end

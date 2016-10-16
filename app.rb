require 'sinatra'
require_relative './lib/game.rb'

get '/' do
    erb(:index)
end

post '/name' do
  $player = params[:player]
  redirect to '/print_name'
end

get '/print_name' do
  @player = $player
  erb(:print_name)
end

get '/playrock' do
  game = Game.new
  @computer_play = game.play
  erb(:playrock)
end


get '/playpaper' do
  game = Game.new
  @computer_play = game.play
  erb(:playpaper)
end

get '/playscissors' do
  game = Game.new
  @computer_play = game.play
  erb(:playscissors)
end

require 'sinatra/base'
require './lib/game'
require 'pp'

class Rpschallenge < Sinatra::Application

get '/enter_name' do
  erb(:index)
end

post '/name' do
  @playername = params[:player_name]
  erb(:welcome)
end

post '/game' do

 game=ComputerGame.new
 @input = game.player(params[:user_input])
 @output = game.choice
 @result = game.outcome
 p @input
 p @output
 p @result
 erb(:result)
 
end
end
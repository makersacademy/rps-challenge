require 'sinatra/base'
require './lib/game'


class Rpschallenge < Sinatra::Application

get '/enter_name' do
  erb(:index)
end

post '/name' do
  @playername = params[:player_name]
  erb(:welcome)
end

post '/game' do

  @game = ComputerGame.new
  @game.player(params[:user_input])
  @userinput = @game.user_choice
  @output = @game.choice
  @result = @game.outcome
  erb(:result)
 
end
end
require 'sinatra/base'

class Rpschallenge < Sinatra::Application

get '/enter_name' do
  erb(:index)
end

post '/name' do
  @playername = params[:player_name]
  erb(:welcome)
end
post '/game' do
p params
 
 game.player(params[:user_input])
 @userinput = game.user_choice
 
end
end
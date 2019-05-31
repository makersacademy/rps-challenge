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
 @user_choice = params[:rock, :paper, :scissor].sample
 
end
end
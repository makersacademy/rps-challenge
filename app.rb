require 'sinatra/base'

class RPS < Sinatra::Base 
  enable :sessions
 

get '/' do
  erb :index
end


post '/names' do
  @player_1_name = params[:player_1_name]
  erb :play
end


  run! if app_file == $0
end

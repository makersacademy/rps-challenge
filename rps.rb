require 'sinatra/base'
require './spec/features/web_helpers'

class RPS < Sinatra::Base

 enable :sessions

get '/' do
  erb :home
end

post '/game' do
  @player = params[:player_name]
  erb :game
end

#start the server if ruby file executed directly
run! if app_file == $0
end

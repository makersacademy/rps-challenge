
require 'sinatra/base'
require './lib/player.rb'
class RPS < Sinatra::Base
	enable :sessions

  get '/' do
    erb :name
	end
	
	post "play" do
  @player_move = params[:move]
  redirect "/play"
end
	

	get '/play' do
		erb :play
	end




	run! if app_file == $0
end 

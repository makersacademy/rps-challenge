require 'sinatra/base'

class Rps < Sinatra::Base
	enable :sessions

  get '/' do
    erb :index
  end

 	post '/names' do 
 		session[:name] = params[:name]
 		redirect '/game'
 	end

 	post '/new_choice' do
 		session[:pick_a_weapon] = params[:pick_a_weapon]
 		@user_choice = Player.new(pick_a_weapon)
 		redirect '/game'
 	end

 	get '/game' do
 		@name = session[:name]
 		erb :game
 	end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

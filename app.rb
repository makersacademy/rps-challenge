require 'sinatra/base'
require_relative './lib/computer'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do 
		@name = params[:player_name]
		erb :index
  end

  post '/names' do
  	@name = params[:player_name]
 		erb :names
 	end

 	get '/weapon' do
 		@computer = Computer.new
 		@weapon = params[:move]
 		erb :weapons
 	end

run! if app_file == $0
end
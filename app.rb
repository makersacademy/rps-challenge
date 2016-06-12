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

 	get '/rock' do
 		@computer = Computer.new
 		erb :rock
 	end

 	get '/paper' do
 		@computer = Computer.new
 		erb :paper
 	end

 	get '/scissors' do
 		@computer = Computer.new
 		erb :scissors
 	end

run! if app_file == $0
end

require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
	end
	
	post '/name' do
		erb :play
	run! if app_file == $0
end 
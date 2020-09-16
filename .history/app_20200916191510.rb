require 'sinatra/base'

class RPS < Sinatra::Base 
		get '/' do 
			'LETS PLAY!'
		end 
		run if app_file == $0
end 

require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Hello there!'
	end
	
	run! if app_file == $0
end 
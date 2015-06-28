require 'sinatra/base'
require './lib/game'
require './lib/player'


class RPSchallenge < Sinatra::Base

	get '/' do 
		"Hello world"
	end

# start the server if ruby file executed directly
  run! if app_file == $0
end
require 'sinatra/base'
require "sinatra/reloader"
require './lib/player.rb'
require './lib/game.rb'

class Tournament < Sinatra::Base
	enable :sessions
	configure :development do
		register Sinatra::Reloader
  end

	get '/' do
		erb(:index)
	end

	run if app_file == $0
end
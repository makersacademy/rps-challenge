require 'sinatra/base'
require "sinatra/reloader"
require './lib/game.rb'

class Tournament < Sinatra::Base
	enable :sessions
	configure :development do
		register Sinatra::Reloader
  end

	get '/' do
		erb(:index)
	end

	post '/names' do
		player_1 = Player.new(params[:player_1_name])
		$game = Game.new(player_1)
		redirect '/play'
	end

	get '/play' do
		@game = $game
		erb(:play)
	end

	get '/winner' do
		@game = $game
		erb(:winner)
	end

	run if app_file == $0
end
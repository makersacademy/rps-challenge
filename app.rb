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

	post '/rock' do
		@game = $game
		@game.player_1.move='rock'
		$result = @game.hand
	
		case $result
		when "This hand was a draw! Try again."
			redirect '/draw'
		when "#{@game.player_1.name} has won!"
			redirect '/winner'
		when "#{@game.player_1.name} has lost!"
			redirect '/loser'
		end
	end

	post '/paper' do
		@game = $game
		@game.player_1.move='paper'
		$result = @game.hand

		case $result
		when "This hand was a draw! Try again."
			redirect '/draw'
		when "#{@game.player_1.name} has won!"
			redirect '/winner'
		when "#{@game.player_1.name} has lost!"
			redirect '/loser'
		end
	end

	post '/scissors' do
		@game = $game
		@game.player_1.move='scissors'
		$result = @game.hand

		case $result
		when "This hand was a draw! Try again."
			redirect '/draw'
		when "#{@game.player_1.name} has won!"
			redirect '/winner'
		when "#{@game.player_1.name} has lost!"
			redirect '/loser'
		end
	end

	get '/winner' do
		@game = $game
		erb(:winner)
	end

	get '/loser' do
		@game = $game
		erb(:loser)
	end

	get '/draw' do
		@game = $game
		erb(:draw)
	end

	run if app_file == $0
end
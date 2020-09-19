
require 'sinatra/base'
require './lib/player.rb'
require './lib.comp.rb'
require './lib/game.rb'
class RPS < Sinatra::Base

  get '/' do
    erb :name
	end
	
	post "/play" do
  	$player_name = Player.new(params[:name])
  	redirect "/play"
	end

	get '/play' do
		erb :play
	end

	run! if app_file == $0
	end 

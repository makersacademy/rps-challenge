require './lib/game'
require './lib/player'
require './lib/computer'
require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
	
  #  if ENV['RACK_ENV'] == 'test'
  #   disable :show_exceptions
  # end

	before do
		@game = Game.instance
	end

  get '/' do
  	erb :index
  end

  get '/details' do
  	erb :details
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.create(player, Computer.new)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    @game.player1.choice = params[:choice]
    @game.outcome
    redirect '/outcome'
  end

  get '/outcome' do
    erb :outcome
  end

  run! if app_file == $0

end



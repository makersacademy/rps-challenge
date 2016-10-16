require './lib/game'
require './lib/player'
require './lib/computer'
require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

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

  get '/outcome' do
    @game.player1_choice((params[:choice]).to_sym)
    @game.player2.set_choice
    erb @game.outcome
  end

  run! if app_file == $0

end



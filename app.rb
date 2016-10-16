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
  
  post '/computer_turn' do
    @game.player1.set_choice((params[:choice]).to_sym)
    @game.player2.set_choice
    redirect '/outcome'
  end

  get '/multiplayer_details' do
    erb :multiplayer_details
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    redirect '/player1_turn'
  end

  get '/player1_turn' do
    erb :player1_turn
  end

  post '/multiplayer_play1' do
    @game.player1.set_choice((params[:choice]).to_sym)
    redirect '/player2_turn'
  end

   get '/player2_turn' do
    erb :player2_turn
  end

  post '/multiplayer_play2' do
    @game.player2.set_choice((params[:choice2]).to_sym)
    redirect '/outcome'
  end

  get '/outcome' do
    erb @game.outcome
  end

  run! if app_file == $0

end



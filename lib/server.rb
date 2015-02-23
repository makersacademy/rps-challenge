require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class Rps < Sinatra::Base

	game = Game.new

	enable :sessions

	get '/' do
  	erb :index
  end

  post '/' do
  	@name = params[:name]
    @game = game
    if params[:name].empty?
    	@message = "You MUST enter a name!"
    	erb :index
    else
    	@@player1 = Player.new(@name)
      game.add_player(@@player1)
      @@player2 = Player.new("AI")
      game.add_player(@@player2)
      puts @game.inspect
      erb :index
    end
  end

  get '/player' do
    erb :player
  end

  post '/player' do
  	@choice = params[:choice]
  	@@player1.make_choice(@choice)
  	@@player2.choose_random_weapon
  	puts @player.inspect
  	@@winner = game.winner?(@@player1, @@player2)
    erb :player
  end

  post '/result' do
  	erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

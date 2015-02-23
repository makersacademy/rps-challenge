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
  	session[:current] = params[:name]
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
      erb :index
    end
  end

  get '/player' do
    erb :player
  end

  post '/player' do
  	@game = game
  	session[:current] = params[:choice]
  	@choice = params[:choice]
  	@@player1.make_choice(@choice)
  	@comchoice = @@player2.computer_choice
  	@winner = game.winner?(@@player1, @@player2)
    erb :player
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

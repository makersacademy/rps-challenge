require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'computer'

class RockPaperScissors < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  @@game = Game.new
  @@player = Player.new
  @@computer = Computer.new

  get '/' do
    erb :index
  end

  get '/game/new' do
  	erb :new_game
  end

  post '/game/new' do
  	@visitorname = params[:name]
  	if @visitorname && !@visitorname.empty?
  	  redirect '/game'
  	else
  	  redirect '/game/new'
  	  puts "You seem to be nameless!"
  	end
  end

  get '/game' do
  	erb :game

  	@choice = params[:choice]
  	@@player.player_choice @choice
  	@@computer.computer_choice
  end

  get '/game/outcome' do
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

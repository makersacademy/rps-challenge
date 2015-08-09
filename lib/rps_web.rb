require 'sinatra/base'
require_relative './game'
require_relative './player'

class Rps < Sinatra::Base
	enable :session

  get '/' do
    erb :index
  end

  get '/register' do 
  	erb :register
  end 

  post '/register' do 
  	$player_1 = Player.new(params[:name])
  	$player_2 = Player.new("Computer")
  	redirect '/register' if session[:name] == ""
  	redirect '/game'
  end 

  get '/game' do 
  	erb :game
  end 

  post '/winner' do
   	@player_1_choice = $player_1.choose(params[:object])
    @computer_choice = $player_2.choose(generate_computer_object)
    $game = Game.new($player_1, $player_2)
    @outcome = $game.winner
    erb :winner
  end

  def generate_computer_object
  	["Rock", "Paper", "Scissors"].sample
  end

  set :views, Proc.new { File.join(root, "..", "views") }

  # start the server if ruby file executed directly
  run! if app_file == $0
end

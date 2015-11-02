require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base
  
  enable :sessions

  def save_state
  	player = Player.new(session[:symbol])
  	computer = Computer.new

  	@player_selection = player.character
  	@computer_selection = computer.random_select
  	@game = Game.new(@player_selection, @computer_selection)
  	@winner = @game.winner
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
  	p params
  	session[:name] = params[:player_name]
    redirect '/start'
  end

  get '/start' do
  	@name = session[:name]
  	erb(:start)
  end

  post '/rock' do
  	session[:symbol] = :Rock
  	save_state
  	erb(:play)
  end

  post '/paper' do
  	session[:symbol] = :Paper
  	save_state
  	erb(:play)
  end

  post '/scissors' do
  	session[:symbol] = :Scissors
  	save_state
  	erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

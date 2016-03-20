require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'
require_relative 'lib/computer.rb'


class RockPaperScissors < Sinatra::Base
	enable :sessions

  get '/' do
    erb(:index)
  end

  before do
    @game = Game.load
  end

  post '/name' do
  	player = Player.new(params[:player_name])
  	@game = Game.create(player)
  	redirect to('/rock-paper-scissors')
  end

  get '/rock-paper-scissors' do
  	@player_name = @game.player.name
  	erb(:rock_paper_scissors)
  end

  post '/move' do
  	session[:move] = @game.player.make_move(params[:move])
  	redirect('/winner')
  end

  get '/winner' do
  	@player_move = session[:move]
  	@computer_move = Computer.move
  	@winner = @game.winner(@player_move, @computer_move)
  	erb(:winner)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

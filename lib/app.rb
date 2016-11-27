require 'sinatra/base'
require_relative 'rps_player.rb'
require_relative 'rps_game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/about' do
    erb :about
  end

  post '/names' do
    player = Player.new(params[:player_name])
    computer = Player.new('Computer')
    @game = Game.new_game(player, computer)
    redirect '/play'
  end

  before do
    @game = Game.start
  end

  get '/play' do
    erb :play
  end

  post '/selection' do
    @player_choice = @game.player.choice(params[:choice])
    @computer_choice =  @game.computer.computer_choice
    @game.choices(@player_choice, @computer_choice)
    @game.print_winner
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  get '/bye' do
    erb :bye
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/computer'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    player = Player.new(params[:name])
    computer = Computer.new
    @game = Game.create_game(player, computer)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/option' do
    p params
    @game.select_option(params[:option])
    redirect '/result'
  end

  get '/result' do
    @game.get_computer_choice
    @game.get_result(@game.choice, @game.computer_choice)
    erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

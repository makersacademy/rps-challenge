require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/computer'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @name = params[:player]
    player = Player.new(@name)
    computer = Computer.new
    Game.create(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/result' do
    @game = Game.instance
    @player_choice = params[:choice]
    @computer_choice = @game.player_2.choice
    @winner = @game.play_game(@player_choice.to_sym, @computer_choice)
    erb :result
  end

  get '/after_result' do
    params[:choice] == "play_again" ? redirect('/play') : redirect('/')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra/base'
require 'rspec'

require_relative 'lib/computer'
require_relative 'lib/player'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/player' do
    @player = Player.new(params[:player])
    @computer = Computer.new("The Computer")
    $game = Game.new(@player, @computer)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/user_makes_choice' do
    @game = $game
    @computer_choice = @game.computer.computer_choice
    @player_choice = params[:choice]
    $winner = @game.rps(@player_choice, @computer_choice)
    redirect '/result'
  end

  get '/result' do
    @game = $game
    @winner = $winner
    erb(:result)
  end

  post '/try_again' do
    redirect '/play'
  end

  run! if app_file == $0

end

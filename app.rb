require 'sinatra/base'
require 'rspec'

require_relative 'lib/computer'
require_relative 'lib/player'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  enable :session

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/player' do
    player = Player.new(params[:player])
    computer = Computer.new("The Computer")
    @game = Game.create(player, computer)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/user_makes_choice' do
    @computer_choice = @game.computer.computer_choice
    @player_choice = params[:choice]
    @winner = @game.rps(@computer_choice, @player_choice)
    erb(:result)
  end

  post '/try_again' do
    redirect '/play'
  end

  run! if app_file == $0

end

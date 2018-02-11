require 'sinatra/base'
require './lib/computer'
require './lib/game'
require './lib/scoreboard'
require './lib/player'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/player' do
    player = Player.new(params[:player])
    computer = Computer.new
    scoreboard = Scoreboard.new
    @game = Game.create(player, computer, scoreboard)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    @game.player.choose(params[:choice])
    redirect '/battle'
  end

  get '/battle' do
    # @scoreboard = Scoreboard.new
    @outcome = @game.choose_winner(@game.player.choice, @game.computer.rand_choice)
    @game.score.update_score(@outcome)
    erb :battle
  end

  run! if app_file == $0
end

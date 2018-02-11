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
    @game = Game.create(player)
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
    @computer = Computer.new
    @scoreboard = Scoreboard.new
    @outcome = @game.choose_winner(@game.player.choice, @computer.rand_choice)
    @scoreboard.update_score(@outcome)
    erb :battle
  end

  run! if app_file == $0
end

require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/play' do
    @game = Game.create(Player.new(params[:name]), Computer.new)
    erb(:play)
  end

  post '/result' do
    @game = Game.instance
    @game.player.choice(params[:selection])
    @game.computer.choice
    # @game.judge_scores(@game.player.choice(params[:selection], @game.computer.choice)
    erb(:result)
  end


  run! if app_file == $0
end

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
    # call game.judge_scores
    erb(:result)
  end


  run! if app_file == $0
end

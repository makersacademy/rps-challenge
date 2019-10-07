require 'sinatra'
require_relative 'lib/player'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @name = $game.player.name
    erb(:play)
  end

  get '/rock_result' do
    $game.player.pick("rock")
    erb(:result)
  end

  get '/paper_result' do
    $game.player.pick("paper")
    erb(:result)
  end

  get '/scissors_result' do
    $game.player.pick("scissors")
    erb(:result)
  end

  run! if app_file == $0
end

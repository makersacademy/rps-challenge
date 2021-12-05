require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player1]), Player.new('Computer'))
    redirect '/game'
  end

  get '/game' do
    @game = $game
    erb(:game)
  end

  post '/return_result' do
    @game = $game
    @game.players[0].move(params[:move])
    @game.players[1].move(@game.generate_move)
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb(:result)
  end

  run! if app_file == $0
end

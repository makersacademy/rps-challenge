require 'sinatra/base'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/start' do
    erb(:start)
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    $game = Game.new(player1)
    redirect('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/choice' do
    @game = $game
    @game.player1_select(params[:weapon])
    @game.player2_select
    redirect('/winner')
  end

  get '/winner' do
    @game = $game
    @game.update_score
    erb(:winner)
  end

  run! if app_file == $0
end

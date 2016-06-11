require 'sinatra/base'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/start' do
    erb(:start)
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = ComputerPlayer.new
    @game = Game.create(player1, player2)
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game.player1_select(params[:weapon])
    @game.player2_select
    redirect('/winner')
  end

  get '/winner' do
    @game.update_score
    erb(:winner)
  end

  run! if app_file == $0
end

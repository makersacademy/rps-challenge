require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/game_start' do
    @game = Game.create(Player.new(params[:name]), Computer.new)
    redirect('/play')
  end

  get '/play' do
    @name = Game.player_name
    erb(:play)
  end

  post '/result' do
    @result = @game.judge_scores(@game.player.choice(params[:selection]), @game.computer.choice)
    erb(:result)
  end

  run! if app_file == $0
end

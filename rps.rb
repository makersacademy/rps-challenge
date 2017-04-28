require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/bot'
require 'pry'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    player = Player.new(params[:player_1])
    Game.start(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/rock' do
    Game.instance.play(:rock)
    redirect '/result'
  end

  post '/paper' do
    Game.instance.play(:paper)
    redirect '/result'
  end

  post '/scissors' do
    Game.instance.play(:scissors)
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    if @game.won?
      redirect '/win_screen'
    end
    if @game.lost?
      redirect '/lose_screen'
    end
    erb(:result)
  end

  get '/win_screen' do
    @game = Game.instance
    erb(:winner)
  end

  get '/lose_screen' do
    @game = Game.instance
    erb(:loser)
  end
end

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

  post '/choice' do
    choice_symbol = params[:choice].downcase.to_sym
    Game.instance.play(choice_symbol)
    check_result
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
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

  private

  def check_result
    if Game.instance.won?
      redirect '/win_screen'
    end
    if Game.instance.lost?
      redirect '/lose_screen'
    end
  end
end

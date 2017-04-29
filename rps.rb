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
    Game.start(player, params[:best_of])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/choice' do
    choice_symbol = params[:choice].to_sym
    Game.instance.play(choice_symbol)
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    erb(:result)
  end

end

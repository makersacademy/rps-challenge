require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :register
  end

  post '/enter-name' do
    Game.create(params['player1_name'], "T-800")
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choose' do
    @game.player1.choose(params['choice'].to_i)
    @game.player2.choose_random(3)
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

end

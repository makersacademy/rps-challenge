require_relative './lib/player'
require_relative './lib/game'
require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player1 = Player.new(params[:name])
    player2 = Opponent.new
    @game = Game.generate(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/choice' do
    @game = Game.instance
    @game.player1.choose(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    erb(:result)
  end

  get '/play-again' do
    @game = Game.instance
    p @game.player2
    @game.player2.choose_weapon
    p @game.player2
    erb(:play)
  end

  run! if app_file == $0
end

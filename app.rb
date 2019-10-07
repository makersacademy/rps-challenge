require 'sinatra'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.create(Player.new(params['name']))
    redirect 'play'
  end

  get '/play' do
    erb(:play, { locals: { game: Game } })
  end

  post '/choice' do
    Game.player.choice = params[:choice]
    Game.random_move
    Game.compare(Game.player.choice.to_sym)
    p Game.weapon
    redirect 'end'
  end

  get '/end' do
    erb(:end, { locals: { game: Game } })
  end

  run! if app_file == $0
end

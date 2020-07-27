require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = params[:player_name]
    @game = Game.create(player)
    erb(:play)
  end

  post '/comp' do
    @game.outcome(@game.weapon(params[:choice]))
    erb(:outcome)
  end

  get '/test' do
    "Test"
  end

end

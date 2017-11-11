require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.game(params[:player])
    redirect '/play'
  end

  before do
    @game = Game.access_game
  end

  get '/play' do
    @name = @game.player.name
  end

end

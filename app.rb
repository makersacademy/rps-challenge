require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/log'

class Contest < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:login)
  end

  post '/name' do
    @game = Game.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.game
    erb(:play)
  end

  get '/test' do
    @game = Game.game
    erb(:test)
  end

  post '/fight' do

    Game.game.fight(params[:move])
    redirect '/play'
  end

  run! if app_file == $PROGRAM_NAME
end

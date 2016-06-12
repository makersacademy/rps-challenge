require 'sinatra/base'
require './lib/computer'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.set_game(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = Game.instance.player.name
    erb(:play)
  end

  post '/choose_weapon' do
    Game.instance.player.set_choice(params[:choice].to_sym)
    redirect '/outcome'
  end

  get '/outcome' do
    @game = Game.instance
    erb Game.instance.outcome
  end

  run! if app_file == $0
end

require 'sinatra/base'
require_relative '../lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:welcome)
  end

  get '/name-select' do
    erb(:names)
  end

  get '/play' do
    @game = Game.show_game
    erb(:play)
  end

  post '/names' do
    Game.create_game(Player.new(params[:player_name]))
    redirect '/play'
  end

  get '/choice' do
    @game = Game.show_game
    @game.set_choices(params[:choice])
    @game.results
    redirect '/play'
  end

  run! if app_file == $0
end

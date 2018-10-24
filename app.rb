require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_name])
    @game = Game.new_game(player_1)
    redirect '/ready'
  end

  get '/ready' do
    erb :ready
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    @game.player_1.update_choice(params[:choice])
    redirect '/outcome'
  end

  get '/outcome' do
    @game.player_2.update_choice(params[:choice])
    erb :outcome
  end

  run! if app_file == $0
end

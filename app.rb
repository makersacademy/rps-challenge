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
    player = Player.new(params[:player_name])
    @game = Game.new_game(player)
    redirect '/ready'
  end

  get '/ready' do
    erb :ready
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    @game.player.update_choice(params[:choice])
    redirect '/outcome'
  end

  get '/outcome' do
    erb :outcome
  end

  run! if app_file == $0
end

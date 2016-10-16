require 'sinatra/base'
require_relative 'lib/game.rb'
require_relative 'lib/player.rb'

class RPS < Sinatra::Base

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
    @game = Game.new_game(player)
    redirect '/play'
  end

  get '/play' do
    @game
    erb :play
  end

  post '/result' do
    @game.player_choice(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game
    erb :result
  end

  run! if app_file == $0
end

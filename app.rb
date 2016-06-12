require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/welcome' do
    player = Player.new(params[:player_1_name])
    @game = Game.create(player)
    erb :welcome
  end

  get '/round' do
    @game = Game.instance
    move = params[:move].to_sym
    @won_or_drawn_or_lost = @game.play_a_round(move)
    erb :result
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

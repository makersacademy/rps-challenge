require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    erb :play
  end

  get '/play-again' do
    @game = Game.instance
    erb :play
  end

  post '/result' do
    @game = Game.instance
    @game.player.options(params[:weapon])
    @random_option = @game.computer_selection
    #@winner = @game.summary to complete
    erb :result
  end

  run! if app_file == $0
end

require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/selection' do
    @game = Game.instance
    @game.player_select(params[:choice])
    @game.add_computer_selection
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    @result = @game.result
    erb :result
  end

  post '/replay' do
    Game.instance.replay
    redirect '/play'
  end

  run! if app_file == $0
end

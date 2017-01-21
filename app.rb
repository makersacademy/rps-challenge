require 'sinatra/base'
require 'sinatra'

require './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/choice' do
    $game.player.select_choice(params[:choice])
    $game.computer.select_choice
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb(:result)
  end

  run! if app_file == $0
end

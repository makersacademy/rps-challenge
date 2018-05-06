require 'sinatra/base'
require './lib/player'
require './lib/bot'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @name = $player.name
    erb(:play)
  end

  post '/move' do
    $player.input_move(params[:move])
    redirect '/results'
  end

  get '/results' do
    @player_move = $player.move
    @bot_move = Bot.new.random_move
    erb(:results)
  end

  run! if app_file == $0
end

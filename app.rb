require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Computer.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before { @game = Game.instance }

  get '/play' do
    erb :play
  end

  post '/result' do
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end


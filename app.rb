require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    computer = Player.new('Computer')
    Game.create(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/choice' do
    redirect '/round'
  end

  get '/round' do
    'Rock, Paper and Scissors'
  end

  run! if app_file == $0
end

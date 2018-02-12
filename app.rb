require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/play' do
    player_one = Player.new(params[:player_one])
    player_two = Player.new(params[:player_two])
    @game = Game.create(player_one, player_two)
    redirect '/play'
  end

  get '/play' do
    erb @game.winner
  end

  run! if app_file == $0

end

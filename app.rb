require 'sinatra'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.game
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:name1])
    player2 = Player.new(params[:name2])
    @game = Game.start(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end

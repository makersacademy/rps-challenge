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

  post '/settings' do
    player = Player.new(params[:name])
    @game = Game.start(params[:mode], player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    @game.move(params[:move])
    redirect '/play'
  end

  run! if app_file == $0
end

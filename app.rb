require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(Player.new(params[:name]), Player.new)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    @name = @game.player_1.name
    @choice = @game.player_1.choice
    erb(:play)
  end

  post '/choice' do
    @game.player_1.choose(params[:choice])
    redirect '/play'
  end

  post '/result' do
    @game.player_1.choose(params[:choice])
    erb(:result)
  end

  run! if app_file == $0
end

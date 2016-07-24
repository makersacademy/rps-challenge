require 'sinatra/base'
require './lib/game'
# require_relative './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    erb(:play)
  end

  post '/select' do
    @player_1 = Player.new(params[:player_1_name], params[:weapon])
    @game = Game.create
    erb(:attack)
  end

  get '/opponent' do
    @game = Game.instance
    erb(:result)
  end

  run! if app_file == $0
end

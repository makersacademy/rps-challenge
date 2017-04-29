require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPSapp < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :start
  end

  post '/' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/game'
  end

  before do
    @game = Game.load
  end

  get '/game' do
    erb :play
  end

  run! if app_file == $0
end

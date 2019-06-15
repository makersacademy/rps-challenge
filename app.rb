require 'sinatra/base'
require './lib/player'
require './lib/game.rb'

class Rps < Sinatra:: Base
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

  post '/result' do
    @game.play_control(params[:type])
    erb :results
  end

  run! if app_file ==$0
end

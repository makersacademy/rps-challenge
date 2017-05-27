require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPSWeb < Sinatra::Base

  enable :sessions

  get '/' do
    'RPS Game!!'
    erb :index
  end

  post '/names' do
    p params
    player = Player.new(params[:player])
    @game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game.player_choice = params[:choice]
    erb @game.result
  end



  run! if app_file == $0
end

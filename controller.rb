require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    @player1_name = params[:player1_name]
    erb(:index)
  end

  post '/name' do
    p params
    @game = Game.create(Player.new(params[:player1_name]))
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/action' do
    p params
    @game.player.make_move(params[:choice])
    @game.play
    redirect to('/move_confirmation')
  end

  get '/move_confirmation' do
    erb(:move_confirmation)
  end

  run! if app_file == $0

end

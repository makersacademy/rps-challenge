require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

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
    @game = Game.create(Player.new(params[:player1_name]), Computer.new)
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/action' do
    p params
    @game.player.make_move(params[:choice])
    @game.computer.play
    redirect to('/move_confirmation')
  end

  get '/move_confirmation' do
    @game.keep_score
    erb(:move_confirmation)
  end

  run! if app_file == $0

end

require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(Player.new(params[:player1_name]), Computer.new)
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/action' do
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

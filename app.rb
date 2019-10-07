require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(Player.new(params[:p1_name]))
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game.player2.pick
    @game.player1.choose = params[:move]
    @game.result(@game.player1.choice, @game.player2.choice)
    redirect('play')
  end

end

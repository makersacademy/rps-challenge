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
    @game = Game.create(Player.new(params[:p1_name]), Computer.new)
    redirect('/play')
  end

  get '/play' do
    @p1_name = @game.player1.name
    erb(:play)
  end

  post '/choice' do
    @game.player1.choose=(params[:move])
    redirect('play')
  end

end

require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  before(:each) do

  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.create_instance( Player.new(params[:player1]), Player.new(params[:player2]) )
    redirect to('/choice')
  end

  get '/choice' do
    @game = Game.return_instance
    erb(:choice)
  end

  post '/save' do
    @game = Game.return_instance
    @game.choose(params[:choice])
    redirect to('/switch')
  end

  get '/switch' do
    @game = Game.return_instance
    if @game.turn == @game.player1
      @game.switch
      redirect to('/choice')
    else
      redirect to('/play')
    end
  end

  get '/play' do
    @game = Game.return_instance
    erb(:play)
  end



end

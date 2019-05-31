require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Application
  # before do
  #   @game = Game.instance
  # end
  before do
    @game = Game.instance
  end

  get ('/') do
    erb :home
  end
  
  post ('/players') do
    @game = Game.create(params[:name])
    redirect('/game')
  end
  
  get ('/game') do
    erb :play
  end
  
  post ('/choice') do
    @game.player1.choose_weapon(params[:weapon])
    @game.play
    redirect('/results')
  end
  
  get ('/results') do
    erb :results
  end
end

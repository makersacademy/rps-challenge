require 'sinatra/base'
require './views/game.rb'

class RPS < Sinatra::Base

  get '/' do
    @name = params[:name]
    erb (:enter_name)
  end

  get '/choose' do
    @name = params[:name]
    erb (:choose_weapon)
  end

  get '/play' do
    @player = Player.new(params[:weapon],'name')
    @game = Game.new(@player.choice)
    @game.play
    erb (:play)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

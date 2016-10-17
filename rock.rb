require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base



  get '/' do

    erb (:enter_name)
  end

  get '/choose' do
    @name = params[:name]
    erb (:choose_weapon)
  end

  get '/play' do
    @player = Player.new(params[:weapon])
    @game = Game.new(@player.choice)
    @game.play
    erb (:play)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

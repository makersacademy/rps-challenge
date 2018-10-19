require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/play' do
    player = Player.new(params[:name])
    # session[:player] = Player.new(params[:name])
    @game = Game.create(player)
    # session[:game] = Game.new(@player)
    # p @player.name
    erb :play
  end

  post '/result' do
    @choice = params[:choice].downcase
    @game.update_choice(@choice)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

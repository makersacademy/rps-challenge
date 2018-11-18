require 'sinatra'
require './lib/player'
require './lib/game'


class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    session[:game] ? session[:game] : nil
    erb :index
  end

  post '/result' do

    if session[:game]
      @game = session[:game]
      @game.player_1.weapon = params[:options_1].to_sym
      @game.player_2.weapon = params[:options_2].to_sym
      @game.play
    else
      player_1 = Player.new(params[:player_1], params[:options_1].to_sym)
      player_2 = Player.new(params[:player_2], params[:options_2].to_sym)
      session[:game] = Game.new(player_1, player_2)
      @game = session[:game]
      @game.play
    end

    erb :result

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

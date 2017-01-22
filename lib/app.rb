require 'sinatra/base'
require_relative './player'
require_relative './game'


class RPSApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/result' do
    player1 = Player.new(params[:player1], params[:option1])
    player2 = Player.new(params[:player2], params[:option2])
    @game = Game.new(player1,player2)
    erb :result
  end
  run! if app_file == $0
end

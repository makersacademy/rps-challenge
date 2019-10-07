require 'sinatra/base'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/choose' do
    @player_1_name = params[:player_1_name]
    # choice = params[:choice]
    @game = Game.create(params[:choice])
    erb :choose
  end

post '/play' do
  @choice = params[:choice]
  @game = Game.instance
  @game.play
  erb :play
end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

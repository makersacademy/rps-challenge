require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.new_game(params[:player1], params[:player2], 3)
    erb :play  
  end

  run! if app_file == $0
end


# need tests for all the shiz inside index and stuff now
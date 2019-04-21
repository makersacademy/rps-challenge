require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    @player1 = Player.new(params[:player1_name])
    erb :play
  end

  get '/selection' do
    @player1_name = params[:player1_name]
    @player1_move = params[:player1_move]
    erb :selection
  end

  run! if app_file == $0
end

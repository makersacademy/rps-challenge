require 'sinatra'
require 'sinatra/base'
require '.lib/game'
require '.lib/player'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @p1_name = params[:p1_name]
    redirect '/choice'
  end

  get '/choice' do
    erb :choice
  end

  # post '/move' do
  #   redirect '/results'
  # end
  #
  # get '/results' do
  #   @p1_move = params[:p1_move]
  #   @game.result(params[:p1_move], player2_move)
  # end

  run! if app_file == $0
end

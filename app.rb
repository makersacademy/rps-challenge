require 'sinatra'
require 'sinatra/base'
require './lib/game'
require './lib/random_result'

class RPSGame < Sinatra::Base

  enable :session

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = params[:player]
    session[:player] = @player
    erb(:play)
  end

  post '/result' do
    random_generator = RandomResult.new
    opponent_move = random_generator.random_move

    @player_move = params[:move]
    @game = Game.new(@player_move, opponent_move)
    erb(:result)
  end

  run! if app_file == $0

end

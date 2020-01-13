require 'sinatra/base'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = Player.instance
    erb :play
  end

  get '/result' do
    @player = Player.instance
    @player_move = params[:player_move]
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    @winner = @player.compare_moves(@player_move, @computer_move)
    erb :result
  end

  run! if app_file == $0
end

require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    @player1 = Player.new(params[:player1_name])
    @player2 = Player.new(['Harry Potter', 'Sticky Fingers', 'Judge Dredd', 'Eric Cartman', 'Bart Simpson'].sample)
    session[:player1] = @player1
    session[:player2] = @player2
  end

  get '/selection' do
    @player1_name = params[:player1_name]
    @player1_move = params[:player1_move]
    erb :selection
  end

  run! if app_file == $0
end

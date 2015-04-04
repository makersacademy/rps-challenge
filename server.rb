require 'sinatra/base'
require_relative 'lib/AI'
require_relative 'lib/player'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:name] = params[:name]
    erb :make_move
  end

  get '/result' do
    user = Player.new(session[:name])
    computer = AI.new
    current_game = Game.new(user, computer)
    user.choose(params[:choice])
    @computers_choice = computer.choice
    @result = current_game.winner
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

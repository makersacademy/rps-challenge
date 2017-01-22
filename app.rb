require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  get '/' do
    'Hello RPS!'
  end

  get '/register' do
    erb :index
  end

  post '/name' do
    # @p1_name = params[:p1_name_input]
    @p1_name = params[:p1_name_input]
    # @p1 = Player.new(@p1_name)
    @player1 = Player.new(@p1_name)
    @player2 = Player.new("The Computer")
    erb :play
  end

  post '/result' do
    @p1_choice = params[:p1_choice_input]
    if @p1_choice == "Rock"
      @msg = "YOU WIN!"
      erb :winner # same as an internal GET
    elsif @p1_choice == "Paper"
      @msg = "YOU LOSE!"
      erb :winner # same as an internal GET
    else @p1_choice == "Scissors"
      @msg = "IT'S A DRAW!"
      erb :winner # same as an internal GET
    end
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

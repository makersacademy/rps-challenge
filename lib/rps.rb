require 'sinatra/base'
require_relative 'game'
require_relative 'computer'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/game' do
    @visitor = params[:playername]
    redirect to('/') unless (@visitor != "" || @visitor == nil) # is this acceptable, or should it be in the erb?
    erb :game
  end

  post '/game' do
    @visitor = params[:playername]
    @my_move = params[:option]
    @computer_move = Computer.new.move
    @result = Game.new.result(@my_move, @computer_move)
    #session[:option] = @my_move
    p params
    erb :game
  end

  # get '/multi' do
  #   if $player1
  #     $player2 = params[:playername]
  #     session[:player2] = $player2
  #     session[:player1] = $player1
  #     puts "you're player 2"
  #   else
  #     $player1 = params[:playername]
  #     session[:player1] = $player1
  #     puts "you're player 1"
  #   end
  #   p session
  #   erb :multi
  # end
  #
  # post '/multi' do
  #   $player_1_move = params[:option]
  #   session[:player_1_move] = $player_1_move  #need to make sure I understand this, might not be correct
  #   $player_2_move = params[:option]
  #   session[:player_2_move] = $player_2_move
  #   $result = Game.new.result($player_1_move, $player_2_move)
  # end


  # start the server if ruby file executed directly
  run! if app_file == $0

  set :views, proc { File.join(root, '..', 'views') }
end

require 'sinatra/base'
require_relative 'lib/game'

class RPSWeb < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/game_type' do
    session[:user_name] = params[:user_name]
    @user_name = session[:user_name]
    erb :game_type
  end

  get '/new_computer_game' do
    @user_name = session[:user_name]
    erb :new_computer_game
  end

  post '/computer_result' do
    user= Hand.new(name: session[:user_name]).throw_hand(params[:shape].to_sym)
    computer = Hand.new(name: "Computer").throw_hand
    @game = Game.new(user, computer)
    erb :computer_result
  end

  get '/new_multiplayer_game' do
    @user_name = session[:user_name]
    erb :new_multiplayer_game
  end

  post '/multiplayer_result' do
    @user_name = session[:user_name]
    @user_shape = params[:shape]

    if $opponent_hand
      user_hand = Hand.new
      user_hand.shape! @user_shape.to_sym

      @opponent_shape = $opponent_hand.shape?

      rps_game = Game.new
      @result = rps_game.run_game(user_hand, $opponent_hand)
    else
      $opponent_hand = Hand.new
      $opponent_hand.shape! @user_shape.to_sym
    end

    erb :multiplayer_result
  end

  post '/reset_multiplayer' do
    $opponent_hand = nil
    redirect '/new_multiplayer_game'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

  set :views, proc { File.join(root, 'views') }
end

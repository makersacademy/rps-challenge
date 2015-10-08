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
    user= Hand.new(session[:user_name]).throw_hand(params[:shape].to_sym)
    computer = Hand.new("Computer").throw_hand
    @game = Game.new(user, computer)
    erb :computer_result
  end

  get '/new_multiplayer_game' do
    @user_name = session[:user_name]
    erb :new_multiplayer_game
  end

  post '/multiplayer_result' do

    if $opponent_hand != nil
      user_hand = Hand.new(session[:user_name])
      user_hand.throw_hand(params[:shape].to_sym)

      @game = Game.new(user_hand, $opponent_hand)
    else
      $opponent_hand = Hand.new(session[:user_name])
      $opponent_hand.throw_hand(params[:shape].to_sym)
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

require 'sinatra/base'
require_relative 'lib/game'

class RPSWeb < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/new_game' do
    session[:user_name] = params[:user_name]
    @user_name = session[:user_name]
    erb :new_game
  end

  post '/result' do
    @user_name = session[:user_name]
    @user_shape = params[:shape]

    user_hand = Hand.new
    user_hand.shape! @user_shape.to_sym

    computer_hand = Hand.new
    computer_hand.randomise
    @computer_shape = computer_hand.shape?

    rps_game = Game.new
    @result = rps_game.run_game(user_hand, computer_hand)

    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

  set :views, proc { File.join(root, 'views') }
end

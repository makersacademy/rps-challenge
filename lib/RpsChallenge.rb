require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RpsChallenge < Sinatra::Base
  set :public, Proc.new { File.join(root,"..", "public")}
  set :views, Proc.new { File.join(root,"..", "views")}
  enable :sessions

  get '/' do
    erb :index
  end

  get '/start' do
    erb :name_page
  end

  get '/new_game' do
    @num = params[:number]
    game = Game.new
    erb :enter_names
  end

  get '/choose_hands' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    @player1 = session[:player1] || Player.new(@name1)
    @player2 = session[:player2] || Player.new(@name2)
    session[:player1] = @player1
    session[:player2] = @player2
    erb :hands_choices
  end

  get '/results' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @choice1 = params[:choice1]
    @choice2 = params[:choice2]
    # not working! I struggle in passing my rps game along. It works
    # in irb.
    # @player1.chose_hand(@choice1)
    # @player2.chose_hand(@choice2)
    # game.add_player(@player1)
    # game.add_player(@player2)
    # game.winner

    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

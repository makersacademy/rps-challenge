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
    erb :enter_names
  end

  get '/choose_hands' do
    session[:player1] = params[:name1]
    erb :hands_choices
  end

  get '/results' do
    game = Game.new
    name = session[:player1]
    choice = params[:choice1]
    player = Player.new(name)
    player.chose_hand(choice)
    p player.hand_value
    game.add_player(player)
    @winner_name = game.winner.name rescue "Tie"
    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra/base'
require './lib/player'
require './lib/game'
# require './lib/choice'

class RPS_challenge < Sinatra::Base

set :views, Proc.new {File.join(root, "..", "views")}

RPS_array = ["Rock", "Paper", "Scissors"]
# player1 = Player.new
# computer = Player.new

  get '/' do
    erb :index
  end

  get '/name' do
    erb :name
  end

  post '/name' do
    if params[:name].empty?
      @message = "Please enter your name"
      erb :name
    else
      redirect '/choice'
    end
  end

  get '/choice' do
    erb :choice
  end

  post '/choice' do
    player1 = Player.new
    player2 = Player.new
    game = Game.new

    game.add_player(player1)
    game.add_player(player2)

    player1.name = "Joe"
    player2.name = "Computer"

    player1.choice = params[:group1]
    player2.choice = RPS_array.sample

    @player_choice = "You chose #{player1.choice}"
    @other_choice = "The computer chose #{player2.choice}"
    
    @outcome = "The winner is #{game.winner(player1,player2)}"

    erb :choice
   end 

  get '/outcome' do


  end






  # start the server if ruby file executed directly
  run! if app_file == $0
end

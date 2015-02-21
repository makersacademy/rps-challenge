require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS_challenge < Sinatra::Base

enable :sessions

set :views, Proc.new {File.join(root, "..", "views")}
  
  player1 = Player.new
  player2 = Player.new
  game = Game.new
  computer = Computer.new

  get '/' do
    erb :index
  end

  get '/name1' do
    erb :name1
  end

  post '/name1' do
    if params[:name1].empty?
      @message = "Please enter your name"
      erb :name1
    else
      session[:name1] = params[:name1]
      redirect '/name2'
    end
  end

  get '/name2' do
    erb :name2
  end

  post '/name2' do
    if params[:name2].empty?
      @message = "Please enter your name"
      erb :name2
    else
      session[:name2] = params[:name2]
      redirect '/choice1'
    end
  end

  get '/choice1' do
    game.add_player(player1)
    @player1_message = "#{session[:name1]}, please choose:"
    erb :choice1
  end

  post '/choice1' do
    player1.name = session[:name1]
    session[:player1_choice] = params[:group1]
    redirect '/choice2'
   end 

  get '/choice2' do
    game.add_player(player2)
    @player2_message = "#{session[:name2]}, please choose:"
    erb :choice2
  end

  post '/choice2' do
    player2.name = session[:name2]
    session[:player2_choice] = params[:group2]
    redirect '/outcome'
   end 

  get '/outcome' do
    player1.name = session[:name1]
    player2.name = session[:name2]
    player1.choice = session[:player1_choice].to_sym
    player2.choice = session[:player2_choice].to_sym
    outcome = game.winner(player1, player2)


    @player1_message = "#{player1.name} chose: #{player1.choice}"
    @player2_message = "#{player2.name} chose: #{player2.choice}"
    @result_message = "The winner is #{outcome}"
    erb :outcome
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

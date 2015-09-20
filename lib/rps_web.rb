require 'sinatra/base'
require_relative 'game'
require_relative 'computer'
require_relative 'player'

class RpsWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  @@two_player_hash =  {:player1 => nil, :player2 => nil}

  enable :sessions

  #root for p1 name and root for p2 name
  #submit names to two player hash
  #sent to waiting room, constantly refreshing to
  #check if tph contains both players names
  #if it does, redirect to /2pResult

  get '/' do
    erb :index
  end

  get '/form' do
    @error = session[:error]
    erb :make_move
  end

# choose if u want to play comp or p2. if comp go to comp result. if p2, go to p2 select page then p2 result.

  get '/result' do
    names = %w(rock paper scissors lizard spock)
    unless names.include? params[:move]
      session[:error] = "#{params[:move]} is not a valid move try again"
      redirect '/form'
    end
    @name = params[:name]
    @move = params[:move].downcase
    game = Game.new
    computer = Computer.new
    @comp_move = computer.play
    @result = game.result(@move, @comp_move)
    erb :result
  end

    get '/2pform' do
      erb :twoplayerform
    end

    post '/submit_name' do #this is telling it what to do when it receives a post request to /submit_name
      if @@two_player_hash[:player1] == true
        @@two_player_hash[:player2] = true
        @@two_player_hash[:player2_move] = params[:move].downcase
        @@two_player_hash[:player1_name] = params[:name].capitalize
      end
      if @@two_player_hash[:player1] == nil && @@two_player_hash[:player2] == nil
        @@two_player_hash[:player1] = true
        @@two_player_hash[:player1_move] = params[:move].downcase
        @@two_player_hash[:player2_name] = params[:name].capitalize
      end
      redirect '/waiting' #this is a get request made by keyword request
    end

    get '/waiting' do
      p @@two_player_hash
      if @@two_player_hash[:player1] == true && @@two_player_hash[:player2] == true
        @player1_move = @@two_player_hash[:player1_move]
        @player2_move = @@two_player_hash[:player2_move]
        @player1_name = @@two_player_hash[:player1_name]
        @player2_name = @@two_player_hash[:player2_name]
        game = Game.new
        @result = game.result(@player1_move, @player2_move)
        erb :two_player_result
      else
        erb :waiting
      end
    end

end

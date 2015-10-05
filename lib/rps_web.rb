require 'sinatra/base'
require_relative 'game'
require_relative 'computer'
require_relative 'player'
require_relative 'twoplayer'

class RpsWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  enable :sessions

  get '/' do
    erb :index
  end

  get '/form' do
    @error = session[:error]
    erb :make_move
  end

  get '/result' do
    unless Game::POSSIBLE_MOVES.include? params[:move].to_sym
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
      @error = session[:error]
      erb :twoplayerform
    end

  post '/submit_name' do
    unless Game::POSSIBLE_MOVES.include? params[:move].to_sym
      session[:error] = "#{params[:move]} is not a valid move try again"
      redirect '/2pform'
    end
      move = params[:move].downcase
      name = params[:name].capitalize
      TwoPlayer.start_two_player_game(move, name)
      redirect '/waiting'
  end

  get '/waiting' do
    if  TwoPlayer.two_player_hash[:player1] == true && TwoPlayer.two_player_hash[:player2] == true
      @player1_move = TwoPlayer.two_player_hash[:player1_move]
      @player2_move = TwoPlayer.two_player_hash[:player2_move]
      @player1_name = TwoPlayer.two_player_hash[:player1_name]
      @player2_name = TwoPlayer.two_player_hash[:player2_name]
      game = Game.new
      @result = game.result(@player1_move, @player2_move)
      erb :two_player_result
      else
        erb :waiting
      end
  end

end

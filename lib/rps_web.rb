require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'computer'

class Rps_web < Sinatra::Base
enable :sessions

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  post '/welcome' do
    if (params[:name] == '' || params[:name] == nil)
      redirect '/'
    elsif params[:gametype] == "1 player game"
      session[:name] = params[:name]
      $game = Game.new Player, Computer
      session[:player] = :player1
    elsif $game.nil?
      session[:name] = params[:name]
      $game = Game.new Player, Player
      session[:player] = :player1
    else
      session[:name] = params[:name]
      session[:player] = :player2
    end
    session[:gametype] = params[:gametype]
    redirect '/new_game'
  end

    #
    # $game = Game.new(Player, Computer)
    #
    # elsif params[:gametype] == "1 player game"
    #   session[:name] = params[:name]
    #   $game = Game.new Player, Computer
    #
    # else
    #   session[:name] = params[:name]
    #   session[:player] = :player2
    # end


  get '/new_game' do
    session[:weapon] = params[:weapon]
    erb :new_game
  end

  def player
    if session[:player] == :player1
      $game.player_1
    else
      $game.player_2
    end
  end
  #
  # get '/process_result' do
  #   erb :process_result
  # end


  get '/start_game' do
    if $game.player_2.is_a?(Computer)
      $game.draw_with_computer(session[:weapon])
      @result= $game.determine_winner($game.player_1,$game.player_2)
      erb :result
    else
      player.select_weapon(session[:weapon])
      erb :process_result
    end
  end

  get '/2presult' do
    @result = $game.determine_winner(player, player.opponent)
    erb :result
  end


end

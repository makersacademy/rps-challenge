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
    elsif $game.nil?
      session[:name] = params[:name]
      $game = Game.new Player, Player
      session[:player] = :player1
    else
      session[:name] = params[:name]
      session[:player] = :player2
    end
    erb :welcome
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
    erb :new_game
  end

  def player
    if session[:player] == :player1
      $game.player_1
    else
      $game.player_2
    end
  end

  post '/start_game' do
    if $game.player_2.is_a?(Computer)
      session[:weapon] = params[:weapon]
      $game.draw_with_computer(session[:weapon])
      @result= $game.determine_winner($game.player_1,$game.player_2)
      erb :result
    else
      session[:weapon] = params[:weapon]
      player.select_weapon(session[:weapon])
      @result = $game.determine_winner($game.player_1,$game.player_2)
      erb :result
    end
  end
end

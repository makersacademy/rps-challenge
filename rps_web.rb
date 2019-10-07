require "sinatra/base"
require_relative "./lib/player.rb"
require_relative "./lib/game.rb"
require_relative "./lib/computer.rb"

class RPS_web < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/players' do
    session[:player_count] = params[:player_count]
    redirect to '/count'
  end

  get '/count' do
    @player_count= session[:player_count]
    erb(:count)
  end

  post '/names' do
    if session[:player_count] == "1 player"
      session[:player_1_name] = params[:player_1_name]
      @@player2 = Computer.new
      @@instance_game = Game.new(Player.new(session[:player_1_name]), @@player2)
      print @@instance_game.players_names
    else
      session[:player_1_name] = params[:player_1_name]
      session[:player_2_name] = params[:player_2_name]
      @@instance_game = Game.new(Player.new(session[:player_1_name]), Player.new(session[:player_2_name]))
      print @@instance_game.players_names
    end
    redirect to '/play'
  end

  get '/play' do
    if session[:player_count] == "1 player"
      @name1 = session[:player_1_name]
      @name2 = @@player2.name
      p @name2
      if @@instance_game.p1_choice.nil?
        @player = session[:player_1_name]
      elsif @@instance_game.p2_choice.nil?
        @player = @@player2.nme
      end
    else
      @name1 = session[:player_1_name]
      @name2 = session[:player_2_name]
      if @@instance_game.p1_choice.nil?
        @player = session[:player_1_name]
      elsif @@instance_game.p2_choice.nil?
        @player = session[:player_2_name]
      end
    end

    erb(:play)
  end

  post '/choice' do

    if @@instance_game.p1_choice.nil?
      @@instance_game.p1_choice = params[:choice]
      if session[:player_count] == "2 players"
        redirect to @@instance_game.next_play
      else
         @@instance_game.p2_choice = @@player2.computer_move_do
         redirect to '/endgame'
      end
    elsif @@instance_game.p2_choice.nil?
      @@instance_game.p2_choice = params[:choice]
      redirect to '/endgame'
    end
  end

  get '/endgame' do
    if session[:player_count] == "1 player"
      @name1 = session[:player_1_name]
      @name2 = @@player2.name
    else
      @name1 = session[:player_1_name]
      @name2 = session[:player_2_name]
    end 
    erb @@instance_game.result_game
  end

run! if app_file == $0
end

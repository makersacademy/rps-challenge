require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPSWeb < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:select_mode)
  end

  get "/register" do

     @play_mode = params[:play_mode]
     session[:play_mode] = @play_mode

     if @play_mode == "solo"
       erb(:solo_details)
     else
       erb(:multi_details)
     end


  end

  post "/register" do

    @play_mode = session[:play_mode]

    @game = Game.create
    @player1 = Player.new(params[:player1])

    if @play_mode == "solo"

      @player2 = Computer.new

    else

      @player2 = Player.new(params[:player2])

    end
    session[:play_mode] = @play_mode
    session[:player1] = @player1
    session[:player2] = @player2

    redirect "/play"


  end

  get "/play" do
    @play_mode = session[:play_mode]
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player1_selection = ""
    @player2_selection = ""
    @winning_message = ""
    @input_missing_message = ""
    session[:play_mode] = @play_mode
    session[:player1] = @player1
    session[:player2] = @player2

    if @play_mode == "solo"
      erb(:play_solo)
    else
      erb(:play_multi)
    end

  end

  post "/play" do
    @play_mode = session[:play_mode]
    @player1 = session[:player1]
    @player2 = session[:player2]
    @game = Game.instance
    if @play_mode != "solo"
      if !params.keys.include?("player_1_weapon") or !params.keys.include?("player_2_weapon")
        @input_missing_message = "Both players must select a weapon each to play. Please try again"
      else

        @player1.choose_weapon(params[:player_1_weapon].to_sym)
        @player2.choose_weapon(params[:player_2_weapon].to_sym)
        @winning_weapon = @game.play(@player1.weapon, @player2.weapon)
        case @winning_weapon
          when nil
            @winning_message = "It's a draw"
          when @player1.weapon
            @winning_message = "#{@player1.name} wins!"
          else
            @winning_message = "#{@player2.name} wins!"
        end
      end
    else
      if !params.keys.include?("player_1_weapon")
        @input_missing_message = "You must select a weapon to play. Please try again"
      else
        @player1.choose_weapon(params[:player_1_weapon].to_sym)
        @winning_weapon = @game.play(@player1.weapon, @player2.weapon)

        case @winning_weapon
          when nil
            @winning_message = "It's a draw"
          when @player1.weapon
            @winning_message = "#{@player1.name} wins!"
          else
            @winning_message = "#{@player2.name} wins!"
        end
      end
    end
    session[:play_mode] = @play_mode
    session[:player1] = @player1
    session[:player2] = @player2

    if @play_mode == "solo"
      erb(:play_solo)
    else
      erb(:play_multi)
    end

  end

  run! if app_file == $0
end

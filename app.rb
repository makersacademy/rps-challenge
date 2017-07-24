require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game_messager'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  helpers do

    def create_game
      if session[:type] == :single
        session[:game] = Game.create(Player.new(params[:player_1_name]),
            ComputerPlayer.new('Superhans'), session[:type], session[:best_of], GameMessager.new)
      else
        session[:game] = Game.create(Player.new(params[:player_1_name]),
            Player.new(params[:player_2_name]), session[:type], session[:best_of], GameMessager.new)
      end
    end

    def event_message(player, choice)
      "#{player.name} chooses #{choice.to_s.capitalize}!" if choice
    end

    def generic_message(player)
      "#{player.name} has chosen!"
    end

    def win_message(winner)
      winner == 0 ? 'Draw!' : "#{winner.name} wins the round!"
    end

    def game_over?
      @game.over?
    end

    def end_game
      @game.confirm_winner
      redirect '/end_game'
    end
  end

  before do
    @game = session[:game]
  end

  get '/' do
    erb :index
  end

  post '/menu' do
    session[:type] = params[:choice].to_sym
    redirect '/enter_details'
  end

  get '/enter_details' do
    @type = session[:type]
    erb :enter_details
  end

  post '/name' do
    session[:best_of] = params[:best_of]
    create_game
    redirect '/play'
  end

  get '/play' do
    @player_1_message = session[:player_1_message] || 'Choose from the above!'
    @player_2_message = session[:player_2_message] || 'Get on with it m8'
    erb :play
  end



  post '/choice_1' do
    if @game.type == :multi
      session[:player_1_choice] = params[:player_1_choice].to_sym
      session[:player_1_message] = generic_message(@game.player_1)
      session[:player_2_message] = "#{@game.player_2.name}'s turn!"
    else
      player_1_choice = params[:player_1_choice].to_sym
      player_2_choice = @game.player_2.choose
      @game.play(player_1_choice, player_2_choice)
      session[:player_1_message] = event_message(@game.player_1, player_1_choice)
      session[:player_2_message] = event_message(@game.player_2, player_2_choice)
    end
    redirect '/end_round'
  end

  post '/choice_2' do
    player_2_choice = params[:player_2_choice].to_sym
    @game.play(session[:player_1_choice], player_2_choice)
    session[:player_1_message] = event_message(@game.player_1, session[:player_1_choice])
    session[:player_2_message] = event_message(@game.player_2, player_2_choice)
    redirect '/end_round'
  end

  get '/end_round' do
    @player_1_message = session[:player_1_message]
    @player_2_message = session[:player_2_message]
    end_game if game_over?
    session[:player_1_message] = "#{@game.player_1.name}'s turn!"
    session[:player_2_message] = "Get on with it m8"
    erb :end_round
  end

  get '/end_game' do
    @player_1_message = session[:player_1_message]
    @player_2_message = session[:player_2_message]
    erb :end_game
  end

  post '/play_again' do
    session.clear
    redirect '/'
  end

end

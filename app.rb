require 'sinatra/base'
require './lib/player'
require './lib/computer_player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  helpers do
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

  get '/' do
    erb :index
  end

  before do
    @game = session[:game]
  end

  post '/name' do
    session[:game] = Game.create(Player.new(params[:player_name]), ComputerPlayer.new('Superhans'))
    redirect '/play'
  end

  get '/play' do
    end_game if game_over?
    @last_play = session[:last_play]
    @player_1_choice = session[:player_1_choice] || 'Choose from the above!'
    @player_2_choice = session[:player_2_choice] || 'Get on with it m8'
    erb :play
  end

  post '/choice' do
    p params
    player_1_choice = params[:player_1_choice].to_sym
    if @game.type == :single
      player_2_choice = @game.player_2.choose
      @game.play(player_1_choice, player_2_choice)
      session[:last_play] = win_message(@game.last_winner)
      session[:player_1_choice] = event_message(@game.player_1, player_1_choice)
      session[:player_2_choice] = event_message(@game.player_2, player_2_choice)
    else
      session[:player_1_choice] = generic_message(@game.player_1)
    end
    redirect '/play'
  end

  get '/end_game' do
    @player_1_choice = session[:player_1_choice]
    @player_2_choice = session[:player_2_choice]
    erb :end_game
  end

  post '/play_again' do
    session.clear
    redirect '/'
  end

end

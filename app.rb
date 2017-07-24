require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game_text'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  helpers do

    def create_players
      @player_1 = Player.new(params[:player_1_name])
      if session[:type] == :single
        @player_2 = ComputerPlayer.new('Superhans')
      else
        @player_2 = Player.new(params[:player_2_name])
      end
    end

    def create_game
      create_players
      session[:game] = Game.create(@player_1, @player_2, session[:type], session[:best_of], GameText.new)
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
    erb :play
  end

  post '/choice_1' do
    if @game.type == :multi
      session[:player_1_choice] = params[:player_1_choice].to_sym
      @game.game_text.waiting_for_player_2(@game.player_1.name, @game.player_2.name)
      redirect '/play'
    else
      player_1_choice = params[:player_1_choice].to_sym
      player_2_choice = @game.player_2.choose
      @game.play(player_1_choice, player_2_choice)
      redirect '/end_round'
    end
  end

  post '/reset' do
    @game.game_text.reset(@game.player_1.name)
    redirect '/play'
  end

  post '/choice_2' do
    player_2_choice = params[:player_2_choice].to_sym
    @game.play(session[:player_1_choice], player_2_choice)
    redirect '/end_round'
  end

  get '/end_round' do
    end_game if game_over?
    erb :end_round
  end

  get '/end_game' do
    erb :end_game
  end

  post '/play_again' do
    session.clear
    redirect '/'
  end

end

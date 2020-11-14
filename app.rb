require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/rockpaperscissors.rb'

class Game < Sinatra::Base
  enable :sessions

  before do
    @game = RockPaperScissors.instance
  end

  get '/' do
    erb(:index)
  end

  post "/game-mode" do
    if params[:choice] == "single_player"
      erb(:single_name)
    else
      erb(:multiple_names)
    end
  end

  post "/give-one-name" do
    player1 = Player.new(params[:name])
    player2 = Player.new("Computer", true)
    RockPaperScissors.new_game(player1, player2)
    redirect('/play')
  end

  post "/give-two-names" do
    player1 = Player.new(params[:name1])
    player2 = Player.new(params[:name2])
    RockPaperScissors.new_game(player1, player2)
    redirect('/p1-turn-multiplayer')
  end

  post "/single-player-choice" do
    player_choice = params[:choice].to_sym
    computer_choice = RockPaperScissors::CHOICES.sample
    result = @game.play_round(player_choice, computer_choice)
    redirect("/round-results?result=#{result}&computer=#{computer_choice}&player=#{player_choice}")
  end

  get "/round-results" do    
    if params[:result] == 'win'
      @winner_name = @game.player1.name
    elsif params[:result] == 'loss'
      @winner_name = @game.player2.name
    else
      @winner_name = "no one, it's a draw"
    end
   
    erb(:results)
  end

  get '/play' do
    erb(:play)
  end

  get '/p1-turn-multiplayer' do
    erb(:p1_turn_multiplayer)
  end

  post '/p1-multiplayer-choice' do
    session[:p1choice] = params[:player1choice]
    erb(:p2_turn_multiplayer)
  end

  post '/p2-multiplayer-choice' do
    session[:p2choice] = params[:player2choice]
    session[:result] = @game.play_round(session[:p1choice].to_sym, session[:p2choice].to_sym)
    redirect('/multiplayer-results')
  end

  get '/multiplayer-results' do
    p session[:result]

    if session[:result] == :win
      @winner_name = @game.player1.name
    elsif session[:result] == :loss
      @winner_name = @game.player2.name
    else
      @winner_name = "no one, it's a draw"
    end

    erb(:multiplayer_results)
  end

  get '/next-round' do
    @game.winner.nil? ? redirect('/play') : redirect('/final-results')
  end

  get '/final-results' do
    erb(:final_results)
  end
end

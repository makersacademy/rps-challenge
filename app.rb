require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]

    session[:player_1_score] = 0
    session[:player_2_score] = 0

    @singleplayer = true if session[:player_2] == ""
    @singleplayer ? redirect('/game') : redirect('/multiplayer')
  end

  get '/game' do
    @player1 = session[:player_1]

    @player_1_score = session[:player_1_score]
    @player_2_score = session[:player_2_score]

    @result_message = session[:result_message]
    @choice = session[:player1_choice]
    @computer_choice = session[:player2_choice]
    erb :game
  end

  get '/multiplayer' do
    @player1 = session[:player_1]
    @player2 = session[:player_2]
    erb :multi_game
  end

  post '/result' do
    @choice = params[:Rock] unless params[:Rock].nil?
    @choice = params[:Paper] unless params[:Paper].nil?
    @choice = params[:Scissors] unless params[:Scissors].nil?
    @choice = params[:Lizard] unless params[:Lizard].nil?
    @choice = params[:Spock] unless params[:Spock].nil?

    computer_random = [:Rock, :Paper, :Scissors, :Lizard, :Spock]
    @computer_choice = computer_random[rand(4)]

    result = Hash.new
    result['Rock'] = { Rock: nil, Paper: false, Scissors: true, Lizard: true, Spock: false }
    result['Paper'] = { Rock: true, Paper: nil, Scissors: false, Lizard: false, Spock: true }
    result['Scissors'] = { Rock: false, Paper: true, Scissors: nil, Lizard: true, Spock: false }
    result['Lizard'] = { Rock: false, Paper: true, Scissors: false, Lizard: nil, Spock: true }
    result['Spock'] = { Rock: true, Paper: false, Scissors: true, Lizard: false, Spock: nil }

    @player_1_score = session[:player_1_score]
    @player_2_score = session[:player_2_score]

    if result[@choice][@computer_choice] == true
      @match_result = 'won'
      @player_1_score += 1
      session[:result_message] = 'You won!'
    elsif result[@choice][@computer_choice] == false
      @match_result = 'lost'
      @player_2_score += 1
      session[:result_message] = 'You lost!'
    elsif result[@choice][@computer_choice].nil?
      @match_result = 'draw'
      session[:result_message] = 'You draw!'
    end

    session[:player1_choice] = @choice
    session[:player2_choice] = @computer_choice
    session[:player_1_score] = @player_1_score
    session[:player_2_score] = @player_2_score

    redirect('/game')
  end

  post '/reset' do
    session[:player_1_score] = 0
    session[:player_2_score] = 0

    session[:result_message] = nil
    session[:player1_choice] = nil
    session[:player2_choice] = nil

    redirect('/game')
  end
end

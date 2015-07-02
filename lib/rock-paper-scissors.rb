require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    if $game
      erb :start
    else
      erb :index
    end
  end

  get '/start' do
    $game ||= Game.new Player

    if params[:advanced] == 'on' and !game_extended?
      extend_lizard_spock
    end

    if params[:single] == 'on'
      session[:player] = 'player_1'
      $game.player_1.opponent.name = "Computer"
      $game.player_1.opponent.choice = Game::RulesOptions::options.sample
    elsif params[:multi] == 'on'
      session[:player] = 'player_1'
    end

    erb :start
  end

  post '/start' do

    @user = params[:name]
    if @user and @user.strip != ''

      unless session[:player] == 'player_1'
        session[:player] = 'player_2'
      end

      player_from_session.name = @user
      erb :choice
    else
      erb :start
    end
  end

  post '/outcome' do

    @choice = params.key('on')
    player_from_session.choice = @choice
    redirect '/outcome'
  end

  get '/outcome' do

    if $game.over?
      @username = player_from_session.name
      @choice = player_from_session.choice
      @opponent_name = player_from_session.opponent.name
      @opponent_choice = player_from_session.opponent.choice
      @message = message @choice, @opponent_choice
      @result = $game.won_lost_or_tied player_from_session
    else
      redirect '/holding'
    end

    erb :outcome
  end

  get '/holding' do

    while !$game.over?
    end

    redirect '/outcome'
  end

  def player_from_session
    session[:player] == 'player_2' ? $game.player_2 : $game.player_1
  end

  def extend_lizard_spock
    Game.set_options(["rock","spock", "paper", "lizard","scissors"])
    Game.set_rules(["Rock blunts Scissors", "Scissors cuts Paper",
                    "Paper wraps Rock", "Lizard poisons Spock",
                    "Rock crushes Lizard", "Spock smashes Scissors",
                    "Scissors decapitates Lizard", "Lizard eats Paper",
                    "Paper disproves Spock", "Spock vapourizes Rock"])
  end

  def game_extended?
    (Game::RulesOptions::options).count == 5
  end

  def message choice1, choice2
    (Game::RulesOptions::rules).select { |rule| rule.include?(choice1.capitalize) and rule.include?(choice2.capitalize) }[0]
  end

  run! if app_file == $0

end

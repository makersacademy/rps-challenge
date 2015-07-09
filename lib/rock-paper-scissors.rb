require 'sinatra/base'
require './lib/game'

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

    if params[:advanced] == 'on'
      $game ||= Game.new Player, RPSLS
    else
      $game ||= Game.new Player, RPS
    end

    if params[:single] == 'on'
      session[:player] = 'player_1'
      $game.player_1.opponent.name = "Computer"
      $game.player_1.opponent.choice = $game.options.sample
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

  def message choice1, choice2
    ($game.rules).select { |rule| rule.include?(choice1.capitalize) and rule.include?(choice2.capitalize) }[0]
  end

  run! if app_file == $0

end

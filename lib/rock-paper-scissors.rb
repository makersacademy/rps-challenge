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

    if params[:single] == 'on'
      session[:player] = 'player_1'
      $game.player_1.opponent.name = "Computer"
      $game.player_1.opponent.choice = Game::OPTIONS.sample
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
      @options = Game::OPTIONS
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

  run! if app_file == $0

end

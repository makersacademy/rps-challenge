require 'sinatra/base'
require_relative 'game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  $game = Game.new
  $computer = ComputerPlayer.new

  get '/' do
    $players = []
    $choices = {}
    erb :index
  end

  post '/name' do
    session[:version] = params['game_version']
    erb :name
  end

  post '/start' do
    session[:name] = params[:player_name]
    session[:name] = "Anonymous" if session[:name] == ""
    @user_name = session[:name]
    $players << session[:session_id]
    if session[:version] == 'RPSLS'
      @next = '/_rpsls'
    end
    erb :start
  end

  get '/number_of_players' do

    erb :number_of_players
  end

  get '/one_player_game' do
    @user_name = session[:name]
    if session[:version] == 'RPSLS'
      erb :game_play_rpsls
    else
      erb :game_play
    end
  end

  post '/one_player_game' do
    @player_choice = params['choice'].to_sym
    if session[:version] == 'RPSLS'
      @computer_choice = $computer.choice_rpsls
      @result = $game.result_rpsls(@player_choice, @computer_choice)
    else
      @computer_choice = $computer.choice_rps
      @result = $game.result_rps(@player_choice, @computer_choice)
    end
    erb :post_game
  end

  get '/two_player_game' do
    @user_name = session[:name]
    if session[:version] == 'RPSLS'
      erb :game_play_rpsls
    else
      erb :game_play
    end
  end

  post '/two_player_game' do
    @player_choice = params['choice'].to_sym
    $choices[session[:session_id]] = @player_choice
    redirect '/result'
  end

  get '/result' do
    @player_choice = $choices[session[:session_id]]
    redirect '/end' if $choices.count == 2
    erb :result
  end

  get '/end' do
     @player_choice = $choices[session[:session_id]]
    @opponent_choice_hash = $choices.reject { |k, v| k == session[:session_id] }
    @opponent_choice = @opponent_choice_hash.to_a[0][1]
    if session[:version] == 'RPSLS'
      @result = $game.result_rpsls(@player_choice, @opponent_choice)
    else
      @result = $game.result_rps(@player_choice, @opponent_choice)
    end
    erb :gameover
  end

  get '/pending' do
    redirect '/two_player_game' if $players.count == 2
    erb :pending
  end

  set :views, Proc.new { File.join(root, "..", "views") }
  set :static, true
  # start the server if ruby file executed directly
  run! if app_file == $0
end

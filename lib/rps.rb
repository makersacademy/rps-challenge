require 'sinatra'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  set :public_folder, 'public'
  enable :sessions

  get '/' do
    erb :start_page
  end

  get '/game/new' do
    @@game = Game.new(Player)
    erb :register
  end

  post '/game/get_ready' do
    @@game.player_1.name = params[:name] if params[:name] =~ /\S+/
    @@game.set_goal(params[:goal].to_i) if params[:goal] =~ /\d/
    @name = @@game.player_1.name
    @goal = @@game.goal
    session[:no_choice_err] = nil
    erb :get_ready
  end

  get '/game/choose' do
    @name = @@game.player_1.name
    @goal = @@game.goal
    @no_choice_err = session[:no_choice_err]
    erb :choose
  end

  post '/game/result' do
    if params[:choice].nil?
      session[:no_choice_err] = 'You have to make a selection!'
      @no_choice_err = session[:no_choice_err]
      redirect '/game/choose'
    else
      @name = @@game.player_1.name
      session[:choice] = params[:choice]
      session[:cpu_choice] = @@game.player_2.cpu_choice
      @choice = session[:choice]
      @cpu_choice = session[:cpu_choice]
      @result = @@game.result(@choice, @cpu_choice)
      @result == 'draw' ? @winner = 'Draw!' : @winner = "#{@result.name} wins the round!"
      @wins = @@game.player_1.wins
      @cpu_wins = @@game.player_2.wins
      @goal = @@game.goal
      if @@game.won?
        redirect '/game/game_over'
      else
        session[:no_choice_err] = nil
        erb :result
      end
    end
  end

  get '/game/game_over' do
    @name = @@game.player_1.name
    @choice = session[:choice]
    @wins = @@game.player_1.wins
    @cpu_choice = session[:cpu_choice]
    @cpu_wins = @@game.player_2.wins
    @goal = @@game.goal
    @winner = @@game.winner.name
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

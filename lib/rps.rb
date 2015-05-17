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
    @@game.rules=params[:rules]
    @rules = @@game.rules
    @name = @@game.player_1.name
    @goal = @@game.goal
    erb :get_ready
  end

  get '/game/choose' do
    @rules = @@game.rules
    @name = @@game.player_1.name
    @goal = @@game.goal
    erb :choose
  end

  post '/game/result' do
    @name = @@game.player_1.name
    session[:choice] = params[:choice]
    if @@game.rules == 'rps'
      session[:cpu_choice] = @@game.player_2.cpu_choice_rps
    else
      session[:cpu_choice] = @@game.player_2.cpu_choice_rpsls
    end
    @choice = session[:choice]
    @cpu_choice = session[:cpu_choice]
    @reason = @@game.reason(@choice, @cpu_choice)
    @result = @@game.result(@choice, @cpu_choice)
    @result == 'draw' ? @winner = "It's a draw!" : @winner = "#{@result.name} wins the round!"
    @wins = @@game.player_1.wins
    @cpu_wins = @@game.player_2.wins
    @goal = @@game.goal
    if @@game.won?
      redirect '/game/game_over'
    else
      erb :result
    end
  end

  get '/game/game_over' do
    @name = @@game.player_1.name
    @choice = session[:choice]
    @wins = @@game.player_1.wins
    @cpu_choice = session[:cpu_choice]
    @cpu_wins = @@game.player_2.wins
    @reason = @@game.reason(@choice, @cpu_choice)
    @goal = @@game.goal
    @winner = @@game.winner.name
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

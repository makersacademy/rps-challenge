require 'sinatra'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Base
set :views, Proc.new { File.join(root, "..", "views") }
set :public_folder, 'public'
enable :sessions

  @@game = Game.new(Player)

  get '/' do
    erb :start_page
  end

  get '/game/new' do
    erb :register
  end

  post '/game/get_ready' do
    @@game.player_1.name = params[:name]
    @@game.set_goal(params[:rounds]) if params[:rounds] =~ /\d/
    @name = @@game.player_1.name
    @rounds = @@game.goal
    erb :get_ready
  end

  get '/game/choose' do
    @name = @@game.player_1.name
    @rounds = @@game.goal
    erb :choose
  end

  post '/game/result' do
    @name = @@game.player_1.name
    @choice = params[:choice]
    @cpu_choice = @@game.player_2.cpu_choice
    @result = @@game.result(@choice, @cpu_choice)
    @result == 'draw' ? @winner = 'Draw!' : @winner = "#{@result.name} is the winner!"
    @wins = @@game.player_1.wins
    @cpu_wins = @@game.player_2.wins
    @rounds = @@game.goal
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra'
require 'sinatra/reloader'
require './lib/single_player'
require './lib/multi_player'
require './lib/control_games'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end
  
  @control = ControlGames.create
  
  before do
    @game = SinglePlayer.instance
    @multi_game = MultiPlayer.instance
    @control = ControlGames.instance
  end
  
  get '/' do
    erb(:index)
  end
  
  get '/single_player' do
    erb(:single_player)
  end
  
  post '/name' do
    @game = SinglePlayer.create(params[:player])
    redirect '/play_single'
  end
  
  post '/action' do
    @game.random if params[:choice] == "random"
    @game.option(params[:choice]) if params[:choice] != "random"
    @game.computer
    redirect '/play_single'
  end
  
  get '/play_single' do
    @finish = @game.compare(@game.choice, @game.ai_choice) unless @game.choice.nil?
    erb(:play_single)
  end
  
  get '/multi_player' do
    erb(:multi_player)
  end
  
  post '/names' do
    session[:hash] = (0..20).map { ('a'..'z').to_a[rand(26)] }.join
    @multi_game = MultiPlayer.create(Player.new(params[:player]))
    @control.add(session[:hash] => @multi_game)
    redirect '/play_multi'
  end
  
  get '/play_multi' do
    @hash = session[:hash]
    erb(:play_multi)
  end
  
  get '/play_multi_2nd_player' do
    hash = params[:hash]
    find_game = @control.all_games.select { |game| game[hash] }
    @multi_game = find_game.first.values.first
    erb(:play_multi_2nd_player)
  end
  
  post '/names_2nd_player' do
    @multi_game.player2 = Player.new(params[:player2])
    redirect '/play_game_multi_2nd_player'
  end
  
  get '/play_game_multi_2nd_player' do
    @finish = @multi_game.compare(@multi_game.player2_choice, @multi_game.player1_choice) unless @multi_game.player1_choice.nil? || @multi_game.player2_choice.nil? 
    erb(:play_game_multi_2nd_player)
  end
  
  get '/play_game_multi_1st_player' do
    @finish = @multi_game.compare(@multi_game.player1_choice, @multi_game.player2_choice) unless @multi_game.player1_choice.nil? || @multi_game.player2_choice.nil? 
    erb(:play_game_multi_1st_player)
  end
  
  post '/action_multi_1st_player' do
    @multi_game.player1_random if params[:choice] == "random"
    @multi_game.player1_option(params[:choice]) if params[:choice] != "random"
    redirect '/play_game_multi_1st_player'
  end
  
  post '/action_multi_2nd_player' do
    @multi_game.player2_random if params[:choice] == "random"
    @multi_game.player2_option(params[:choice]) if params[:choice] != "random"
    redirect '/play_game_multi_2nd_player'
  end
  
  run! if app_file == $0
end
  
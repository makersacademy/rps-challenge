require 'sinatra/base'
require 'game'
require 'rps_extended'


class RPSApp < Sinatra::Base
  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, "views") }
  set :public_folder, Proc.new { File.join(root, "../public") }

  RPSSL = ['Scissors', 'Paper', 'Rock', 'Lizard', 'Spock']

  get '/' do
    erb :homepage
  end

  post '/start-game' do
    Game.create(name_1: params[:name_1], name_2: params[:name_2], multiplayer: params[:multiplayer], weapons: RPSSL, game_module: RPSExtended)
    redirect('/play-game')
  end

  get '/play-game' do
    @player = (params[:player2].nil? ?  @game.player_1_name : @game.player_2_name)
    @action = (params[:player2].nil? ? '/player-1-move' : '/player-2-move')
    erb :game_view
  end

  post '/player-1-move' do
    @game.add_move_1(params[:move].to_i)
    @game.multiplayer ? redirect('/play-game?player2=true') : redirect('/result')
  end

  post '/player-2-move' do
    @game.add_move_2(params[:move].to_i)
    redirect('/result')
  end

  get '/result' do
    @player_1_name = @game.player_1_name
    @player_2_name = @game.player_2_name
    @result = @game.result
    erb :end_screen
  end

  # before filters
  before do
    @game = Game.game_instance
  end

  # start the server if ruby file executed directly
  run! if $0 == __FILE__
end

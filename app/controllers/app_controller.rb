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
    Game.create(name_1: params[:name_1], name_2: params[:name_1], multiplayer: params[:multiplayer], weapons: RPSSL, game_module: RPSExtended)
    redirect('/play-game')
  end

  get '/play-game' do
    params[:player2] ?  @player = @game.player_2_name : @player = @game.player_1_name
    params[:player2] ?  @action = "/player-2-move" : @action = "/player-1-move"
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


# # Single Player
# post '/singleplayer-names' do
#   Game.create(name_1: params[:name_1], name_2: 'Computer', num_weapons: 5, game_module: RPSExtended)
#   redirect('/singleplayer-game')
# end
#
# get '/singleplayer-names' do
#   erb :singleplayer_names
# end
#
# get '/singleplayer-game' do
#   @player = @game.player_1_name
#   @action = "singleplayer-move"
#   erb :game_view
# end
#
# post '/singleplayer-move' do
#   @game.add_move_1(params[:move].to_i)
#   redirect('/result')
# end
#
# # Multi-Player
# get '/multiplayer-names' do
#   erb :multiplayer_names
# end
#
# post '/multiplayer-names' do
#   Game.create(name_1: params[:name_1], name_2: params[:name_2], num_weapons: 5, game_module: RPSExtended)
#   redirect('/mutliplayer-game-p1-turn')
# end
#
# get '/mutliplayer-game-p1-turn' do
#   @player = @game.player_1_name
#   @action = "mutliplayer-game-p1-turn"
#   erb :game_view
# end
#
# post '/mutliplayer-game-p1-turn' do
#   @game.add_move_1(params[:move].to_i)
#   redirect('/mutliplayer-game-p2-turn')
# end
#
# get '/mutliplayer-game-p2-turn' do
#   @player = @game.player_2_name
#   @action = "mutliplayer-game-p2-turn"
#   erb :game_view
# end
#
# post '/mutliplayer-game-p2-turn' do
#   @game.add_move_2(params[:move].to_i)
#   redirect('/result')
# end
#
# get '/result' do
#   @result = @game.result
#   erb :end_screen
# end

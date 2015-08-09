require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Base

  DEFAULT_PLAYER_NAME = "Anonymous"
  RPS_HANDS = [ :rock, :paper, :scissors ]

  enable :sessions

  set :views, proc { File.join(root, '..', 'views') }
  set :public_folder, proc { File.join(root, '..', 'public') }

  get '/' do
    erb :index
  end

  post '/' do
    @player_name = get_player_name params
    result = play_hand params if params[:hand]
    @display_result = result.to_s if result
    erb :index
  end

  private

  def play_hand params
    hand = params[:hand].to_sym
    player = Player.new({ hands: [ :rock, :paper, :scissors ] })
    game = Game.new({player_1: player})
    player.set_hand :rock
    game.play_hand player
  end

  def get_player_name params
    player_name = session[:player_name] if session[:player_name]
    player_name = set_player_name params if params[:name]
    session[:player_name] = player_name
    player_name
  end

  def set_player_name params
    params[:name].empty? ? player_name = DEFAULT_PLAYER_NAME : player_name = params[:name]
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

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
    @player_name = session[:player_name] if session[:player_name]
    @player_name = set_player_name params if params[:name]
    session[:player_name] = @player_name

    erb :index
  end

  private

  def set_player_name params
    params[:name].empty? ? player_name = DEFAULT_PLAYER_NAME : player_name = params[:name]
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

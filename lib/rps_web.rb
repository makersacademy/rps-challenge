require 'sinatra/base'
require_relative 'game'

class RpsWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/registration' do
    erb :registration
  end

  get '/choose-mode' do
    session[:name_1] = params[:name].capitalize
    $name_1 = session[:name_1]
    @name_1 = $name_1
    redirect '/registration' if session[:name_1] == ''
    erb :mode
  end

  get '/single-mode' do
    @name_1 = $name_1
    $name_2 = 'COMPUTER'
    $player_1 = Player.new $name_1
    $player_2 = Player.new $name_2
    $game_single = Game.new($player_1, $player_2)
    erb :singlemode
  end

  get '/play-match' do
    @name_1 = $name_1
    erb :playmatch
  end

  get '/matchresult' do
    session[:move_single_player] = params[:move]
    @move_single_player = session[:move_single_player].to_sym
    erb :matchresult
  end

  get '/gameresult' do
    erb :gameresult
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

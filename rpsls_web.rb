require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/computer'
require 'pry'
require 'pry-byebug'

class RPSLSWeb < Sinatra::Base

  configure do
    enable :sessions
    set :public_folder, File.expand_path('../public', __FILE__)
  end

  helpers do
    def current_player
      Player.find(session[:player_id])
    end

    def add_player(player)
      id = player.object_id
      Player.add(id, player)
      session[:player_id] = id
    end

  end

  before do
    @game = Game.game
  end

  get '/' do
    redirect '/welcome' if current_player
    erb :name
  end

  post '/names' do
    player = Player.new(params[:name])
    add_player(player)
    redirect '/welcome'
  end

  get '/welcome' do
    redirect '/' unless current_player
    erb :welcome
  end

  post '/single' do
    Game.start_game(current_player, Computer.new)
    redirect '/play'
  end

  post '/multi' do
    # tbd
  end

  get '/play' do
    redirect '/' unless current_player
    @game.play if @game.ready?
    erb :play
  end

  post '/weapon' do
    @game.add_weapon(session[:player_id], params[:weapon])
    redirect :play
  end

  post '/play_again' do
    @game.reset
    redirect :play
  end

  post '/logout' do
    session.clear
    redirect '/'
  end

  run! if __FILE__ == $0

end

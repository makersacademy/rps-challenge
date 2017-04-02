
require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    computer = Computer.new # Saving name in session.
    $new_game = Game.new(player, computer)
    redirect '/play' # Redirecting to play.
  end

  get '/play' do
    @game = $new_game#Assinging session name to variable.
    erb :play # Referrin to play document.
  end

  get '/rock' do
    @game = $new_game
    erb :rock
  end

  get '/paper' do
    @game = $new_game
    erb :paper
  end

  get '/scissors' do
    @game = $new_game
    erb :scissors
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

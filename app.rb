
require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_name]) # Saving name in session.
    redirect '/play' # Redirecting to play.
  end

  get '/play' do
    @player_name = $player1.name#Assinging session name to variable.
    erb :play # Referrin to play document.
  end

  get '/rock' do
    @player_name = $player1.name
    erb :rock
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

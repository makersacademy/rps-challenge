require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_name = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name.name
    erb :play
  end

  post '/chosen_weapon' do
    @player_name = $player_name.name
    session[:weapon] = params[:weapon]
    $computer_weapon = (Computer.new).chosen_weapon
    redirect '/fight'
  end

  get '/fight' do
    @player_name = $player_name.name
    @weapon = session[:weapon]
    @computer_weapon = $computer_weapon
    erb :fight
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

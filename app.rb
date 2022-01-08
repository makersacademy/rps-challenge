require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'

class RPSGame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    # I promise to never use global variables in tech tests
    $player_1 = Player.new(params[:player_1_name].capitalize)
    # $player_2 = Player.new(params[:player_2_name].capitalize)
  
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    # @player_2_name = $player_2.name
    
    erb :play
  end

  run! if app_file == $0
end

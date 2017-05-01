require_relative './lib/player.rb'
require_relative './lib/randomiser.rb'
require 'sinatra/base'
require 'shotgun'

class Rps < Sinatra::Base

  get '/' do 
    erb(:index)
  end

  post '/names' do 
    @player_1 = params[:player_name]
    $player_1 = @player_1
    redirect '/game'
    # "Hey #{player_1} you are now playing RPS"
  end

  get '/game' do
    @player_1 = $player_1
    erb(:game)
  end

  get '/choose' do 
    @player_1 = $player_1
    erb(:choose)
  end

  post '/result' do 
    @player_1 = $player_1
    @player_1_result = params[:selection]
    @result = Randomiser.new.randomise
    erb(:result)
  end

  run! if app_file == $0

end

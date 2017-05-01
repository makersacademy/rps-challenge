require_relative './lib/player.rb'
require_relative './lib/randomiser.rb'
require_relative './lib/game.rb'
require_relative './lib/result.rb'
require 'sinatra/base'
require 'shotgun'

class Rps < Sinatra::Base

  get '/' do 
    erb(:index)
  end

  post '/names' do 
    $game = Game.new(params[:player_name])
    @game = $game 
    redirect '/choose'
  end

  # get '/game' do
  #   @game = $game
  #   erb(:game)
  # end

  get '/choose' do
    @game = $game
    erb(:choose)
  end

  post '/result' do 
    @game = $game
    @p1_result = params[:selection]
    @p2_result = Randomiser.new.randomise
    @result = Result.new(@p1_result, @p2_result).return_winner
    erb(:result)
  end

  run! if app_file == $0

end

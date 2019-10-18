require 'sinatra/base'
require './lib/game'
class Rps < Sinatra::Base
  get '/' do
    erb :index
  end
  post '/name' do 
    @player_name = params[:player_name]
    $game = Game.new(@player_name)
    redirect '/play'
  end
  get '/play' do 
    erb :play
  end 
  post '/play' do 
    $player_selection = params[:player_selection]
    redirect '/result'
  end
  get '/result' do
    @game = $game
    @player_selection = $player_selection
    @computer_selection = @game.computer_selection
    @result = @game.calculate_winner(@player_selection, @computer_selection)   
    erb :result
  end
  run! if app_file == $0
end

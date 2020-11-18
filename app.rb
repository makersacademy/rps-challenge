require 'sinatra/base'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Application
  enable :sessions

  attr_reader :player_choice

  get '/' do
    erb :index
  end

  post '/names' do
    player = params[:player_name]
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @player_name = $game.player
    erb :play
  end

  post '/result' do
    @player_name = $game.player
    @player_choice = params[:choice]
    @computer_choice = $game.computer_choice
    $game.player_choice = @player_choice
    p "in app rb, player then computer"
    p @player_choice
    p @computer_choice
    p $game.result
    @result = $game.result
    erb :result
  end

# start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra/base'
require './lib/game.rb'

class Rps < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/player_name' do
    @player = params[:player].capitalize
    $game = Game.new
    erb (:player_name)
  end

  get '/rock' do
    @game = $game
    @computer_move = Computer.new.move
    @result = @game.play_a_round(:Rock,@computer_move)
    erb(:rock)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

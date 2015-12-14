require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class Battle < Sinatra::Base

  get '/' do
   erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]))
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @score = $game.score
    @computer_score = $game.computer_score
    erb :play
  end

  post '/rock' do
     redirect '/rock_it'
  end

  get '/rock_it' do
    @player_1_name = $game.player_1.name
    erb :shuffle
  end

  post '/paper' do
     redirect '/paper_it'
  end

  get '/paper_it' do
    @player_1_name = $game.player_1.name
    erb :shuffle_paper
  end

  post '/scissors' do
     redirect '/scissors_it'
  end

  get '/scissors_it' do
    @player_1_name = $game.player_1.name
    erb :shuffle_scissors
  end

end

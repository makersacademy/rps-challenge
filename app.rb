require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/computer'
require 'sinatra/base'
require 'pry'

class RPS < Sinatra::Base
  get '/' do
    erb(:homepage)
  end

  post '/name' do
    @game = Game.create(params[:player_name])
    redirect '/play_start'
  end

  before do
    @game = Game.instance
  end

  get '/play_start' do
    @player_name = @game.player_name
    erb(:play_start)
  end

  post '/rock' do
    @game.player_chooses('Rock')
    redirect '/play_end'
  end

  post '/paper' do
    @game.player_chooses('Paper')
    redirect '/play_end'
  end

  post '/scissors' do
    @game.player_chooses('Scissors')
    redirect '/play_end'
  end

  get '/play_end' do
    @user_choice = @game.player_choice
    @computer_choice = @game.computer_choice
    @game.score_game
    @result = @game.result
    erb(:play_end)
  end

end

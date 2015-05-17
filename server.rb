require 'sinatra/base'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

class RPS < Sinatra::Base
  GAME = Game.new
  CHOICES = %w(rock paper scissors)

  get '/' do
    erb :index
  end

  post '/new_game' do
    player_one = Player.new(params[:Name])
    player_two = Player.new('Computer')
    GAME.add_player(player_one)
    GAME.add_player(player_two)
    erb :new_game
  end

  post '/round' do
    GAME.player_1.choice = params[:Choice]
    @comp_choice = GAME.player_2.choice = CHOICES.sample
    @choice = GAME.player_1.choice
    GAME.round
    @p1 = GAME.player_1_wins
    @p2 = GAME.player_2_wins
    @won = GAME.won if GAME.won
    erb :round
  end

  post '/multi_game' do
  end

  # start the server if ruby file executed directly
  # run! if app_file == $PROGRAM_NAME or 0?
end

require 'sinatra/base'
require_relative 'lib/game.rb'
require_relative 'lib/player.rb'


class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    p params
    @game = Game.new_game(Player.new(params[:name]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @player = @game.player
    erb :play
  end

  get '/rock' do
    @player_choice = "Rock"
    @game = Game.instance
    @game_choice = @game.play
    @winner = @game.decide_winner(@player_choice, @game_choice)
    erb :rock
  end

  get '/paper' do
    @player_choice = "Paper"
    @game = Game.instance
    @game_choice = @game.play
    @winner = @game.decide_winner(@player_choice, @game_choice)
    erb :paper
  end

  get '/scissors' do
    @player_choice = "Scissors"
    @game = Game.instance
    @game_choice = @game.play
    @winner = @game.decide_winner(@player_choice, @game_choice)
    erb :scissors
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end

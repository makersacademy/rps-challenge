require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/cpu'

class RPS < Sinatra::Base
  before do
    @game = Game.access
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.create(player, Cpu.new)
    redirect '/play'
  end

  get '/play' do
    @player = @game.player.name
    erb :play
  end

  post '/rock' do
    @game.player.selection = :rock
    redirect '/result'
  end

  post '/paper' do
    @game.player.selection = :paper
    redirect '/result'
  end

  post '/scissors' do
    @game.player.selection = :scissors
    redirect '/result'
  end

  get '/result' do
    @player = @game.player
    @cpu = @game.cpu
    if @game.result == :player_win
      @result = "Congratulations, #{player}, you won Rock-Paper-Scissors!"
    elsif @game == :cpu_win
      @result = "Sorry, #{player}, looks like you lost the game. Better luck next time!"
    else
      @result = "You both chose the same thing - the game is a draw!"
    end
    erb :result
  end

  run! if app_file == $PROGRAM_NAME
end

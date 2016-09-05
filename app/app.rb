require 'sinatra/base'
require_relative '../lib/game'
require_relative '../lib/computer'
require_relative '../lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player1.name
    erb :play
  end

  post '/choices' do
    @player_name = $player1.name
    session[:result] = params[:rock_button] || params[:paper_button] || params[:scissors_button]
    redirect '/show_result'
  end

  get '/show_result' do
    @player1_choice = session[:result]
    @computer = Computer.new
    @player2_choice = @computer.choice
    @game = Game.new
    @result = @game.win(@player1_choice.to_sym, @player2_choice.to_sym)
    if @result == :win
      @winner = "player1 won"
    elsif @result == :lose
      @winner = "player2 won"
    else
      @winner = "draw"
    end
    erb :game_over
  end

  run! if app_file == $0
end

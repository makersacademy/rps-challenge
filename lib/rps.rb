require 'sinatra/base'
require 'active_support/all'
require 'sinatra'
require_relative './game'
require_relative './player'

class Rps < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }
  game = Game.new
  player = Player.new("Yannick")
  
  get '/' do
    erb :index
  end

  get '/game' do
    game.add(player)
    player_name = player.name
    choice = params[:choice]

    if choice.nil?
      @outcome = "To get started #{player_name} pick a weapon"
      erb :play_game, locals: {outcome: @outcome}
    else
      computer_choice = game.get_random_choice
      win_lose_draw = game.winner?(choice.to_sym,computer_choice).to_s
      @outcome = "The computer played the #{computer_choice}, you #{win_lose_draw}"
      erb :play_game, locals: {outcome: @outcome}
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

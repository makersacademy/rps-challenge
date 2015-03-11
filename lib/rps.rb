require 'sinatra/base'
require 'active_support/all'
require 'sinatra'
require_relative './game'
require_relative './player'

class Rps < Sinatra::Base

  
  set :views, Proc.new { File.join(root, "..", "views") }
  
  enable :sessions

  get '/' do
    session[:game] = Game.new
    session[:player] = Player.new("Yannick")
    session[:game].add(session[:player])
    erb :index
  end

  get '/game' do
    choice = params[:choice]


    if choice.nil?
      @outcome = "To get started #{session[:player].name} pick a weapon"
      erb :play_game, locals: {outcome: @outcome, player_score: @player_score, computer_score: @computer_score}
    else
      computer_choice = session[:game].get_random_choice
      win_lose_draw = session[:game].outcome?(choice.to_sym,computer_choice)
      session[:game].assign_score(win_lose_draw)
      @outcome = "The computer played the #{computer_choice}, you #{win_lose_draw.to_s}"
      @computer_score = "Computer score: #{session[:game].computer_score}" 
      @player_score = "Player score: #{session[:game].player_score}"
      erb :play_game, locals: {outcome: @outcome, player_score: @player_score, computer_score: @computer_score}
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

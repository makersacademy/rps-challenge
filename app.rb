require 'sinatra'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  # homepage
  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect 'play-page'
  end

  # main game page
  get '/play-page' do
    @player_name = session[:player_name]
    $computer = Game.new
    erb(:play_page)
  end

  # results page
  post '/result' do
    @choice = params[:player_choice]
    @computer_choice = $computer.random_selection
    @result = $computer.game_results(@choice, @computer_choice)
    # declares winner name:
    $computer.player_wins?(@choice, @result) ? (@winner = session[:player_name]) : (@winner = $computer.name)
    erb(:results)
  end
end

require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/rock_paper_scissors'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/single' do
    erb :single
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/pvr'
  end

  get '/pvr' do
    @player_1_name = session[:player_1_name]
    erb :pvr
  end

  post '/rock' do
    rps = RockPaperScissors.new(guess: 'rock')
    $player_guess = rps.view_player
    $robot_guess = rps.view_computer
    $pvr_results = rps.winner_is
    redirect '/pvr_results'
  end

  post '/paper' do
    rps = RockPaperScissors.new(guess: 'paper')
    $player_guess = rps.view_player
    $robot_guess = rps.view_computer
    $pvr_results = rps.winner_is
    redirect '/pvr_results'
  end

  post '/scissors' do
    rps = RockPaperScissors.new(guess: 'scissors')
    $player_guess = rps.view_player
    $robot_guess = rps.view_computer
    $pvr_results = rps.winner_is
    redirect '/pvr_results'
  end

  post '/spock' do
    rps = RockPaperScissors.new(guess: 'spock')
    $player_guess = rps.view_player
    $robot_guess = rps.view_computer
    $pvr_results = rps.winner_is
    redirect '/pvr_results'
  end

  post '/lizard' do
    rps = RockPaperScissors.new(guess: 'lizard')
    $player_guess = rps.view_player
    $robot_guess = rps.view_computer
    $pvr_results = rps.winner_is
    redirect '/pvr_results'
  end

  get '/pvr_results' do
    @player_1_name = session[:player_1_name]
    @player_guess = $player_guess
    @robot_guess = $robot_guess
    @pvr_results = $pvr_results
    erb :pvrresults
  end

  post '/pvr_again' do
    @player_guess = nil
    @robot_guess = nil
    @pvr_results = nil
    redirect '/pvr'
  end

  run! if app_file == $0
end

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
    $pvr_results = rps.winner_is
    redirect '/pvr_results'
  end

  post '/paper' do
    rps = RockPaperScissors.new(guess: 'paper')
    $pvr_results = rps.winner_is
    redirect '/pvr_results'
  end

  post '/scissors' do
    rps = RockPaperScissors.new(guess: 'scissors')
    $pvr_results = rps.winner_is
    redirect '/pvr_results'
  end

  get '/pvr_results' do
    @player_1_name = session[:player_1_name]
    @pvr_result = $pvr_results
    erb :pvrresults
  end

  post '/pvr_again' do
    redirect '/pvr'
    @pvr_results = nil
  end

  run! if app_file == $0
end

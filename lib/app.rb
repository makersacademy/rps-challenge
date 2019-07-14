require 'sinatra'
require 'shotgun'
require_relative "score_decider"

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/entry_1' do
    session[:player_1_move] = params[:player_1_move]
    redirect '/submit_2'
  end

  get '/submit_2' do
    erb :player_2_move
  end

  post '/entry_2' do
    session[:player_2_move] = params[:player_2_move]
    $score = ScoreDecider.new(session[:player_1_move], session[:player_2_move])
    redirect '/score'
  end

  get '/score' do
    @score = $score.decider
    erb :details
  end

  run! if app_file == $0
end

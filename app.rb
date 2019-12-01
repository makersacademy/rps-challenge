require 'sinatra'
require_relative 'lib/rps'

class Game < Sinatra::Base
  enable :sessions

  get '/' do 
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    session[:player_1] = @player_1
    session[:player_2] = @player_2
    redirect '/player-1-choose'
  end

  get '/player-1-choose' do
    erb(:player_1_choose)
  end

  post '/player-1-choice' do
    @player_1_choice = params[:player_1_choice]
    session[:player_1_choice] = @player_1_choice
    redirect '/player-2-choose'
  end

  get '/player-2-choose' do
    erb(:player_2_choose)
  end

  post '/player-2-choice' do
    @player_2_choice = params[:player_2_choice]
    session[:player_2_choice] = @player_2_choice
    redirect '/outcome'
  end
  
  get '/outcome' do
    @outcome = RPS.new(session[:player_1_choice], session[:player_2_choice]).outcome
    erb(:outcome)
  end
end


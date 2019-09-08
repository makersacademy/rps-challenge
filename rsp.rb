require 'sinatra'
require './lib/ai.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :form
  end

  post '/play' do
    session[:name] = params[:name]
    redirect '/game_on'
  end

  get '/game_on' do
    @human_player = session[:name]
    erb :game_on
  end

  post '/users_choise' do
    session[:value] = params[:subject]
    redirect '/game_over'
  end

  get '/game_over' do
    @human_player = session[:name]
    @player_picks = session[:value]
    @ai_picks = AI.new.random
    erb :game_over
  end

  run! if __FILE__ == $0

end

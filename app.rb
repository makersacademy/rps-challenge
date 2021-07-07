require 'capybara'
require 'sinatra'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1] = params[:player_1]
    redirect '/game'
  end
  
  get '/game' do
    @player_1 = session[:player_1]
    erb :game
  end

  get '/rock' do
    erb :rock
  end

  get '/paper' do
    erb :paper
  end

  get '/scissors' do
    erb :scissors
  end

  run! if app_file == $0

end
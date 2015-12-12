require 'sinatra/base'
require_relative 'lib/round.rb'
require_relative 'lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/new-game' do
    session.clear
    session[:name1] = params[:name1]
    session[:name2] = 'Computer'
    session[:ai] = true
    session[:score1], session[:score2] = 0, 0
    redirect '/play'
  end

  get '/play' do
    @round = Round.new(session, Player)
    erb :play
  end
end
    

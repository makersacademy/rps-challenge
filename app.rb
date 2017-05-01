require 'sinatra/base'
require './lib/opponent'
require './lib/round'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @round = Round.new(session)
    erb :game
  end

  post '/game' do
    session[:shape] = params[:shape].downcase.to_sym
    session[:opposition_shape] = Opponent.new.randomise
    redirect '/game'
  end


  run if app_file == $0
end

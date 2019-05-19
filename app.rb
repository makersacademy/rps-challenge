require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player1] = params[:name1]
    session[:player2] = params[:name2]
    redirect '/play'
  end

  get '/play' do
    @name1 = session[:player1]
    @name2 = session[:player2]
    erb(:play)
  end

  post '/pick' do
    session[:pick1] = params[:pick1].to_sym
    session[:pick2] = params[:pick2].to_sym
    redirect '/result'
  end

  get '/result' do
    @name1 = session[:player1]
    @name2 = session[:player2]

    @pick1 = session[:pick1]
    @pick2 = session[:pick2]
    computer = Game.new
    @winner = computer.validate(@pick1, @pick2)
    erb(:result)
  end
end

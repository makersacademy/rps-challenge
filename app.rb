require 'sinatra'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = Player.new(params[:name])
    session[:player2] = AIPlayer.new
    redirect('/play')
  end

  get '/play' do
    @player = session[:player]
    @player2 = session[:player2]
    erb(:play)
  end

  post '/choose' do
    @player = session[:player]
    @player.choose(params[:choice])
    redirect('/result')
  end

  get '/result' do
    @player = session[:player]
    erb(:result)
  end
end

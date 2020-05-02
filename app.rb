require 'sinatra'
require './lib/player'
require './lib/ai_player'

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
    @player2 = session[:player2]
    @player.choose(params[:choice])
    @player2.choose
    redirect('/result')
  end

  get '/result' do
    @player = session[:player]
    @player2 = session[:player2]
    erb(:result)
  end
end

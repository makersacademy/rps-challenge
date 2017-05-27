require 'sinatra/base'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/login' do
    session[:player] = Player.new(params[:player])
    session[:computer] = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    @computer = session[:computer]
    erb :play
  end

  post '/rock' do
    @player = session[:player]
    @player.draw_rock
    session[:computer].play_hand
    redirect '/play'
  end

  post '/scissors' do
    @player = session[:player]
    @player.draw_scissors
    session[:computer].play_hand
    redirect '/play'
  end

  post '/paper' do
    @player = session[:player]
    @player.draw_paper
    session[:computer].play_hand
    redirect '/play'
  end


end

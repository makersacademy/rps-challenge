require 'sinatra/base'
require_relative '../lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure working!'
  end


  get '/' do
    erb :index
  end

  get '/single' do
    erb :single
  end

  post '/name' do
    $player1 = Player.new(params[:player1])
    redirect '/play'
  end

  get '/multi' do
    'coming soon'
  end

  get '/play' do
    @player1 = $player1
    erb :play
  end

  post '/selection' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @player1 = $player1
    @choice = session[:choice]
    erb :result
  end

  # add /names directory for multiplayer
end

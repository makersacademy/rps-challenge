require 'sinatra/base'
require './lib/player'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    erb :play
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    erb :play
  end

  get '/rock' do
    @player1 = $player1
    erb :rock
  end

  get '/paper' do
    @player1 = $player1
    erb :paper
  end

  get '/scissors' do
    @player1 = $player1
    erb :scissors
  end

end

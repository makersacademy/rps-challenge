require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player])
    redirect '/start'
  end

  get '/start' do
    @player = $player
    erb :start
  end

  post '/play' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @player = $player
    @choice = session[:choice]
    @game = Game.new.choice
    @result = Game.new.result(@choice, @game)
    erb :result
  end
end

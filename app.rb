require 'sinatra/base'

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
    @game = Game.new
    erb :result
  end
end

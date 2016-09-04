require 'sinatra/base'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect to '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/select' do
    $game = Game.new
    @game = $game
    @game.set_player_choice(params[:rps])
    redirect to '/outcome?'+params[:rps]
    #redirect to 'http://google.co.uk?'+params[:rps]
  end

  get '/outcome' do
    @game = $game
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra/base'
require './lib/game'

class App < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/game' do
    @game = Game.create(params[:choice])
    if @game.outcome == :win
      erb(:win)
    elsif @game.outcome == :tie
      erb(:tie)
    else
      erb(:lose)
    end
  end

  run! if app_file == $0
end

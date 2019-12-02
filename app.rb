require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:player1] = Player.new(params[:player1])
    session[:computer] = Computer.new
    session[:game] = Game.new(session[:player1], session[:computer])
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  post '/result' do
    session[:game].player1.choice=params[:choice]
    # @result = @game.get_result
    redirect '/result'
  end

  get '/result' do
    @game = session[:game]
    @result = @game.get_result
    # result = @game.get_result
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

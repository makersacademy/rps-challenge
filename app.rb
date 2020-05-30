require 'sinatra/base'

require 'sinatra/reloader'

require './lib/game'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player_name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

post '/player_move' do
    p session[:player_move] = params[:player_move]
    @player_move = session[:player_move]
    redirect '/result'
end

  get '/play' do
    @player_name = session[:player_name]
    # @player_move = session[:player_move]

    erb(:play) 
  end

  get '/result' do
    game = Game.new
    @player_name = session[:player_name]
    p "Player move:"
    p @player_move = session[:player_move]
    p "Computer move:" 
    p @random_move = game.computer_move
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

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
    p session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play) 
  end

  post '/go' do
    @player_name = session[:player_name]
    p @player_go = params[:player_go]
    game = Game.new
    p @random_move = game.computer_move
    erb(:result)
  end

# get '/result' do
# end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

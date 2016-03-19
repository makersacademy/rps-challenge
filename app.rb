require 'sinatra/base'
require 'sinatra'


class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/login' do
    session[:me] = params[:player_name]
    Game.create(player1_name:session[:me])
    redirect '/play'
  end

  get '/play' do
    @me = Game.instance.player1
    @opponent = Game.instance.player2
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

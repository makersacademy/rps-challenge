require 'sinatra/base'
require 'sinatra/reloader'

class RPSgame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  # our routes would go here
  get '/' do
    erb :index
  end

  post '/marketeer' do
    p params
    $marketeer = params[:marketeer]
    @marketeer = $marketeer
    erb :play
  end

  post '/rock' do
    @marketeer = $marketeer
    @marketeer_move = "rock"
    erb :move
  end  

  post '/paper' do
    @marketeer = $marketeer
    @marketeer_move = "paper"
    erb :move
  end

  post '/scissors' do
    @marketeer = $marketeer
    @marketeer_move = "scissors"
    erb :move
  end  

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end

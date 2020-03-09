require 'sinatra'

class RPS < Sinatra::Base
  get '/test' do
    "Testing"
  end

  get '/' do
    erb :home
  end

  post '/game' do
    @player_name = params[:player_name]
    erb :game
  end

  post '/game-summary' do
    "CPUs random choice will appear here"
  end


  run! if app_file == $0
end
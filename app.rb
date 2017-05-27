require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/register' do
    @player = params[:player_name]
    erb :play
  end

  post '/arena' do
    @choice = params[:choice]
    erb :arena
  end

  run! if app_file == $0
end

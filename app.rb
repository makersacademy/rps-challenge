require "sinatra"

class RPS < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  get '/play' do
    @player_1, @player_2 = params[:player_1], params[:player_2]
    erb :play
  end

  run! if app_file == $0
end 
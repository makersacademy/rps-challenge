require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player_1]
    erb(:play)
  end

end

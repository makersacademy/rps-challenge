require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb(:play)
  end

end

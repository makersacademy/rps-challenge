require 'sinatra/base'

class Game < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:player_1] = params[:player_1]
    @player_1 = session[:player_1]
    erb(:play)
  end

end

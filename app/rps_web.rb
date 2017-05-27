require 'sinatra/base'

class RPS < Sinatra::Base
  #enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    @player_name = params[:player1_name]
    erb(:play)
  end

end

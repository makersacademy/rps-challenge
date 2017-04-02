require 'sinatra/base'

class Spar < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_1_name = params[:player_1_name]
    erb :play
  end

end

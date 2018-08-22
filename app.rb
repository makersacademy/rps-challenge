require 'sinatra/base'

class RPS_Game < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1_name = params[:player1_name]
    @player2_name = params[:player2_name]
    erb(:play)
  end
end
require 'sinatra'
require 'sinatra/base'

class Selection < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @Player1_name = params[:Player1_name]
    @Player2_name = params[:Player2_name]
    erb(:names_and_player1_select)
  end

  post '/player2select' do
    @Player1_selection = params[:Player1selection]
    erb(:Player2_select)
  end

end

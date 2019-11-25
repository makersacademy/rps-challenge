require 'sinatra/base'

class RPS < Sinatra::Base

#enable :sessions

  get '/' do
    erb :index
  end
  post '/names' do
    @player_name = params[:player_name]
    erb :player_choice
  end

  post '/choice' do
    @player_name = params[:player_name]
    @player_choice = params[:choice]
    erb :computer_choice
  end

  get '/play' do
    @game.player1_choice = params[:choice]
    erb @game.result
  end

run! if app_file == $0
end

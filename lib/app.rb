require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:Player_1_name]
    # session[:player_2_name] = params[:Player_2_name]
    redirect('/play')
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]
    erb(:play)
  end

  post '/selection' do
    session[:selection] = params[:Player_1_selection]
    @player_1_selection = session[:selection]

    redirect('result')
  end

  get '/result' do

  end


  run! if app_file == $0
end

#<input type="text" name="Player_2_name">

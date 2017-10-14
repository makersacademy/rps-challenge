require 'sinatra/base'

class Rock_Paper_Scissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb(:play)
  end

  post '/choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/result'
  end

  get '/result' do
    @player_1 = session[:player_1]
    @player_choice = session[:player_choice]
    erb(:result)
  end

  run! if app_file == $0

end

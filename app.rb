require 'sinatra/base'

class RpsGame < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('play')
  end

  get '/play' do
    @player_name = session[:name]
    erb(:play)
  end

  post '/weapon' do
    session[:weapon] = params[:weapon]
    redirect('/result')
  end

  get '/result' do
    @player_name = session[:name]
    @player_weapon = session[:weapon]
    erb(:result)
  end

end

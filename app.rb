require 'sinatra/base'

class RpsGame < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:name] = params[:name]
    redirect('play')
  end

  get '/play' do
    @player_name = session[:name]
    erb(:play)
  end

end

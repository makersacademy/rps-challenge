require 'sinatra/base'

class RPS < Sinatra::Application

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect to('/weapons')
  end

  get '/weapons' do
    erb :weapons
  end

  post '/play' do
    session[:player_1_weapon] = params[:weapon]
    "#{session[:player_1_name]} used #{session[:player_1_weapon]}"
  end

run! if app_file == $0

end

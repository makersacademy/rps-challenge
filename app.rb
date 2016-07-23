require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/home' do
    erb(:home)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/vs'
  end

  get '/vs' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb(:vs)
  end

  get '/choose_weapon' do
    erb(:choose_weapon)
  end

  get '/action' do
    erb(:action)
  end

  get '/outcome' do
    erb(:outcome)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

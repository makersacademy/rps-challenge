require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/choose'
  end

  get '/choose' do
    @name = session[:player_name]
    erb(:choose)
  end

  get '/outcome' do
    @random_number = rand(3)
    @user_choice = params[:user_choice]
    erb(:outcome)
  end

  run! if app_file == $0
end

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
    # p "Name"
    # p @name
    # p "params"
    # p params
    # p "session"
    # p session

    @name = session[:player_name]
    erb(:choose)
  end

  get '/outcome' do
    erb(:outcome)
  end

  run! if app_file == $0
end

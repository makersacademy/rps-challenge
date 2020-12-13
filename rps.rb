require "sinatra/base"

class Rps < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:username] = params[:username]
    redirect to('/plays')
  end

  get '/plays' do
    @username = session[:username]
    @choice = params[:choice]
    erb(:plays)
  end

  post '/replay' do
    @username = session[:username]
    erb(:plays)
  end

  post '/result' do
    @choice = params[:choice]
    @username = session[:username]

    p @choice
    erb(:result)
  end
  
  run! if app_file == $0
end
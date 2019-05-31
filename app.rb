require 'sinatra/base'


class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/startup-game' do
    session[:username] = params[:user_name]
    redirect '/play'
  end

  get 'play' do
    erb(:play)
  end

  run! if app_file == $0

end
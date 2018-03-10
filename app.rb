require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:name] = params[:name]
    redirect('/play')
  end

  get '/play' do
    @player_name = session[:name]
    erb :name
  end

  run! if app_file == $0
end

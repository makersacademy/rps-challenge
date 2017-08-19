require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/rps'
  end

  get '/rps' do
    @player_1_name = session[:player_1_name]
    erb :rps
  end

  run! if app_file == $0
end

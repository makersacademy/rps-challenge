require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/choose' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/choose'
  end

  get '/choose' do
    @player_1_name = session[:player_1_name]
    erb :choose
  end

  run! if app_file == $0
end

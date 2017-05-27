require 'sinatra/base'

class Rsp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/start' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/start'
  end

  get '/start' do
    @player_1_name = session[:player_1_name]
    erb :start
  end

  run! if app_file == $0
end

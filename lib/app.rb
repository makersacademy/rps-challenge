require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @option = session[:option]
    @opponents_option = session[:opponents_option]
    erb :play
  end

  post '/play' do
    session[:option] = params[:option]
    session[:opponents_option] = :Rock
    redirect '/play'
  end

  run! if app_file == $0
end

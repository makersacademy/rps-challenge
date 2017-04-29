require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  get '/rock' do
    @name = session[:name]
    erb :rock
  end

  get '/paper' do
    @name = session[:name]
    erb :paper
  end

  get '/scissors' do
    @name = session[:name]
    erb :scissors
  end

  run! if app_file == $0

end

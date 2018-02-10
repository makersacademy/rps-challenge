require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player' do
    session[:player] = params[:player]
    redirect '/round'
  end

  get '/round' do
    @player = session[:player]
    erb(:round)
  end

  post '/option' do
    session[:option] = params[:option]
    redirect '/result'
  end

  get '/result' do
    @option = session[:option]
    erb(:result)
  end

  run! if app_file == $0
end
require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/challenger' do
    session[:challenger] = params[:challenger]
    redirect '/game'
  end

  get '/game' do
    @challenger = session[:challenger]
    erb(:game)
  end

  run! if app_file == $0

end

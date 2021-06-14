require 'sinatra'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end 

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    session[:p1_name] = params[:p1_name]
    redirect '/play'
  end

  get '/play' do
    p @p1_name
    @p1_name = session[:p1_name]
    erb(:play)
  end 

  run! if app_file == $0

end

require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb(:index)
  end

  enable :sessions

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    erb(:play)
  end




  run! if app_file == $0
end

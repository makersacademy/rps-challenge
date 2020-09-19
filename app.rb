require "sinatra"

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('/play')
  end

  get '/play' do
    @name = params[:name]
    erb(:play)
  end 

  post '/play' do
    redirect('/play')
  end

 



  run! if app_file == 0
end
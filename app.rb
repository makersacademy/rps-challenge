require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :welcome
  end

  post '/names' do
    session[:name] = params[:name]
    redirect('/fight')
  end

  get '/fight' do
    @name = session[:name]
    erb :fight
  end

  post '/choice' do
    session[:choice] = params[:choice]
  end

  get '/result' do

  end


  !run if app_file == $0

end

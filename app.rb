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
    redirect('/result')
  end

  get '/result' do
    @name = session[:name]
    @choice = session[:choice]
    erb :result
  end


  !run if app_file == $0

end

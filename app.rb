require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/player_names' do
    session[:name] = params[:name]
    redirect('/play')
  end

  get '/play' do
    erb :play
  end
  run! if app_file == $0

  post'/store_rock' do
    session[:option] = "Rock"
    redirect('/result')
  end

  post'/store_paper' do
    session[:option] = "Paper"
    redirect('/result')
  end

  post'/store_scissors' do
    session[:option] = "Scissors"
    redirect('/result')
  end  

  get '/result' do
    erb :result
  end
end

require 'sinatra/base'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player1_name] = params[:player1_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player1_name]
    erb(:play)
  end

  post '/weapon_choice' do
    p "the parameter saved was #{params}"
    session[:weapon_choice] = params[:weapon]
    redirect '/result'
  end

  get '/result' do
    @weapon_choice = session[:weapon_choice]
    erb(:result)
  end

  run! if app_file == $0

end

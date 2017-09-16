require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
  erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
      @name = session[:name]
      @choice = session[:choice]
      @computer_choice = session[:computer_choice]
      erb(:play)
  end

  post '/play' do
    session[:choice] = params[:choice]
    session[:computer_choice] = :rock
    redirect '/play'
  end

  run! if app_file == $PROGRAM_NAME

end

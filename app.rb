require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    @option = session[:option]
    @computer_option = session[:computer_option]
    erb :play
  end

  post '/play' do
    session[:option] = params[:option]
    session[:computer_option] = :Rock
    redirect '/play'
  end

  run! if app_file == $0
end

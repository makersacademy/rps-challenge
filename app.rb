require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/choose'
  end

  get '/choose' do
    @player = session[:name]
    erb(:choose)
  end

  post '/choose' do
    session[:choice] = params[:choice]
    session[:opponent_choice] = :ROCK
    redirect '/start'
  end

  get '/start' do
    @choice = session[:choice]
    erb(:start)
  end

  post '/play' do
    @choice = session[:choice]
    @opponent_choice = session[:opponent_choice]
    erb(:play)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

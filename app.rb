require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:marketeer1] = params[:marketeer1]
    redirect '/play'
  end

  get '/play' do
    @marketeer1 = session[:marketeer1]
    @choice = session[:choice]
    @opponent_choice = session[:opponent_choice]
    erb :play
  end

  post '/play' do
    session[:choice] = params[:choice]
    session[:opponent_choice] = [:rock, :paper, :scissors].sample
    redirect '/play'
   end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

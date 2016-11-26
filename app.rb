require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1_name] = params[:player1_name]
    session[:player2_name] = params[:player2_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    @option = session[:option]
    @computers_option = session[:computers_option]
    erb :play
  end

  post '/play' do
    session[:option] = params[:option]
    session[:computers_option] = :Rock
    redirect '/play'
  end


run! if app_file == $0
end

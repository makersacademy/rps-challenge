require 'sinatra/base'

class RPS < Sinatra::Base
enable :sessions

  # get '/' do
  #   'Testing infrastucture working!'
  # end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name]= params[:player_1_name]
    session[:computer]= params[:computer]
    redirect '/play'
  end

  post '/rock' do
    session[:rock]= params[:rock]
    session[:computer]= params[:computer]
    redirect '/rock'
  end

  get '/play' do
  @player_1_name = session[:player_1_name]
  @computer = session[computer]
  erb :play
end

get '/rock' do
@player_1_name = session[:rock]
@computer = session[computer]
erb :play
end


  run! if app_file == $0
end

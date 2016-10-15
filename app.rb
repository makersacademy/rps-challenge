require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @choice = session[:choice]
    erb(:play)
  end

post '/choice' do
  session[:choice] = params[:choice]
  redirect '/result'
end

get '/result' do
  @name = session[:name]
  @choice = session[:choice]
  erb(:result)
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

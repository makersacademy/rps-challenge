require 'sinatra/base'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/infrastructure_testing' do
    'Hello RPSWeb!'
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('/play')
  end

  get '/play' do
    @name = session[:name]
    @choice = session[:choice]
    erb :play
  end

  post '/play' do
    session[:choice] = params[:choice]
    redirect('play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

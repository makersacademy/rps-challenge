require 'sinatra/base'


class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    'Welcome to Rock Paper Scissors!'
    erb(:index)
  end

  post '/form' do
    session[:username] = params[:username]
    redirect('/play')
  end

  get '/play' do
    @username = session[:username]
    erb(:play)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

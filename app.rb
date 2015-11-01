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

  post '/decision' do
    p (session[:decision] = params[:rock]) unless params[:rock] == nil
    p (session[:decision] = params[:paper]) unless params[:paper] == nil
    p (session[:decision] = params[:scissors]) unless params[:scissors] == nil
    redirect('/outcome')
  end

  get '/outcome' do
    @username = session[:username]
    @decision = session[:decision]
    erb(:outcome)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

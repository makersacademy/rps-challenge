require 'sinatra/base'

class RPS < Sinatra::Base
  set :sessions, true
  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player1] = params[:player1_name]
    redirect('/opponent')
  end

  get '/opponent' do
    @player1 = session[:player1]
    erb(:opponent)
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end

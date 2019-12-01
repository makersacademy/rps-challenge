require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player1] = params["player"]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player1]
    erb(:play)
  end

  post '/move' do
    session[:move] = params["move"]
    redirect '/move_page'
  end

  get '/move_page' do
    @move = session[:move]
    erb(:move_page)
  end

  # start server if ruby file executed directly
  run! if app_file == $0

end

require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
     erb (:index)
  end

  post '/name' do
     session[:name] = params[:name]
     redirect '/play'
  end

  get '/play' do
     @game = Game.new(session)
     erb(:play)
  end

  post '/play' do
    session[:choice] = params[:choice]
    session[:option] = :rock
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

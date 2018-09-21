require 'sinatra/base'


class Rps < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/rock' do
    erb :rock
  end
  post '/paper' do
    erb :paper
  end
  post '/scissors' do
    erb :scissors
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra/base'
# require 'sinatra/cookies'


class RPS < Sinatra::Base
  # helpers Sinatra::Cookies


  enable :sessions


  get '/' do
    # @cookies = cookies
    erb :index
  end

  post '/play' do
    session[:me] = params[:player1_name]
    redirect '/play'
  end

  get '/play' do
    @player=session[:me]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

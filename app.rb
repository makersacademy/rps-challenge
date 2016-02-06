require 'sinatra/base'

class RPS < Sinatra::Base

  use Rack::Session::Pool, :expire_after => 2592000

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1_name] = params[:player1_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player1_name]
    erb :play
  end

  post '/results' do
    @player1_name = session[:player1_name]
    erb :results
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

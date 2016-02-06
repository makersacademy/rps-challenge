require 'sinatra/base'
require 'rack'

class RockPaperScissorsGame < Sinatra::Base
  use Rack::Session::Pool, :expire_after => 2592000
  set :session_secret, "super secret"

  get '/' do
    erb :home
  end

  get '/registration' do
    erb :registration
  end

  post '/game' do
    session[:name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  get '/result' do

  end
  # Start the server if Ruby file executed directly
  run! if app_file == $0
end

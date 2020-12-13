require 'sinatra/base'

class RPS < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_1_name])
    redirect '/choose'
  end

  get '/choose' do
    erb :choose
  end

  get '/play' do
    erb :play
  end

  #establish server if file run directly
  run! if app_file == $0
end

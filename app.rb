require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
  $name = params[:player_name]
  redirect '/play'
  end

  get '/play' do
  @name = $name
  erb :play
  end

  get '/attack' do
    @attack = params[:attack]
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

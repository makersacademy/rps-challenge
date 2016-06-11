require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    $players_name= params[:players_name]
    redirect '/play'
  end

  get '/play' do
    @players_name= $players_name
    erb :play
  end

  post '/card' do
    $players_card= params[:choose]
    redirect '/result'
  end

  get '/result' do
    @players_card= $players_card
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/process' do
    @player_choice = params
    redirect '/result'
  end

  get '/result' do
    'You chose Rock!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra/base'

class RPS < Sinatra::Base
  run! if app_file == $0

  get '/test' do
    'Welcome to Rock, Paper, Scissors!'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @player = params[:player]
    erb :play
  end
end

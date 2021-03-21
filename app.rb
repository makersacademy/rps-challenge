require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player1_name = params[:player1_name]
    erb :play
  end

  get '/outcome' do
    "You won!"
  end
end

require 'sinatra'
#require 'rack'

class Rps < Sinatra::Base

  get '/' do
    "Hello, Player!"
    erb(:index)
  end

  post '/name' do
    @player = params[:player] #|| "Player"
    #redirect to '/play'
  end
end

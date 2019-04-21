require 'sinatra/base'

class RPSWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

end

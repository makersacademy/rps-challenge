require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = params[:player1]
    erb :play
  end

end

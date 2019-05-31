require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = params[:name1]
    erb :play
  end

end

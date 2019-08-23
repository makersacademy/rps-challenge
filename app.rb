require 'sinatra/base'

class Play < Sinatra::Base
  get '/' do
    erb :getname
  end

  get '/thegame' do
    erb :thegame
  end

  post '/thegame' do
    @name = params[:name]
    erb :thegame
  end

end

require 'sinatra/base'

class Player < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    @name = params[:name]
    puts params
    erb :play
  end
end

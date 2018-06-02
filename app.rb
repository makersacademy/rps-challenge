require 'sinatra/base'


class Rps < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
    erb :enter
  end

  post '/name' do
    @player_name = params[:player_name]
    #I'm going to keep this until I fully understand why I need to change it
    erb :initiate
  end

  post '/play' do
    erb :play
  end

end

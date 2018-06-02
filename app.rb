require 'sinatra/base'


class Rps < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
    erb :enter
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end
end

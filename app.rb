require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb(:home)
  end

  post '/game' do
    @player = params[:player]
    erb(:game)
  end
end

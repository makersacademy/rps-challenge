require 'sinatra'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/game' do
    @name = params[:name]
    erb(:game)
  end

end

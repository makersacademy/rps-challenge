require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.new(params[:name])
    erb :play
  end

  post '/result' do
    erb :result
  end

  run! if app_file == $0
end

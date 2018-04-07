require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb(:player_name)
  end

  post '/name' do
    @player_name = params[:player_name]
    erb(:play)
  end


run! if app_file == $0
end

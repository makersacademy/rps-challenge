require 'sinatra/base'

class RpsGame < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/play' do
    @player_name = params[:name]
    erb(:play)
  end

end

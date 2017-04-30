require "sinatra/base"

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    @player_1_name = params[:player_1_name]
    erb :names
  end

end

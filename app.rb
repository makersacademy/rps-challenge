require "sinatra/base"

class APP  < Sinatra::Base

  get '/' do
    erb:index
  end

  post '/players' do
    p params
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb:players
  end

end

require 'sinatra/base'

class RockPaperScissors < Sinatra::Base


  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :register
  end

end

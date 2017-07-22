require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/play' do
    @player = params[:player_name]
    erb :play
  end

end

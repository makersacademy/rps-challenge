require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/options' do
    @name = params[:name]
    erb :options
  end

  post '/play' do
    @player_choice = params[:choice]
    erb :play
  end
end

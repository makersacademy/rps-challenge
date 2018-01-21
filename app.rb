require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    @name = params[:player]
    erb :play
  end

  post '/result' do
    @option = params[:option]
    erb :result
  end
end

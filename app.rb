require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/form' do
    @player = params[:name]
  end

end

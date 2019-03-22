require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/play' do
    erb :play
  end
end

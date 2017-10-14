require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/infastructure' do
    "Testing Infastructure"
  end

  get '/' do
    erb(:title)
  end

end
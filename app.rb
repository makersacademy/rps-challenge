require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :register
  end

  post '/play' do
    'Welcome Maria - Ready to play?'
  end

end

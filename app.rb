require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/test-infrastructure' do
    "Test infrastructure correctly functioning"
  end

  get '/' do
    erb :index
  end

end

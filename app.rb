require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/test-infrastructure' do
    "Test infrastructure correctly functioning"
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @name = params[:name]
    erb :confirm
  end

end

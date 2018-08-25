require 'sinatra/base'

class R_P_S < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/register' do
    erb(:register)
  end

  get '/goodbye' do
    'Goodbye'
  end

  post '/names' do
    # store player variables in class
    # redirect to game round 1
  end

end

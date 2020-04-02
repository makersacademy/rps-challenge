require 'sinatra/base'

class Roshambo < Sinatra::Base

  enable :sessions
  set :session_secret, "i76t2oivmyoi3nti37n"

  get '/' do
    erb(:index)
  end
end

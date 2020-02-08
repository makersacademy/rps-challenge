require 'sinatra/base'

class Rpsgame < Sinatra::Base

  configure do
    set :session_secret, "awonkywillawentaway"
  end

  get '/' do
    erb(:index)
  end

end
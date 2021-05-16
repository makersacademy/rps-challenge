require 'sinatra/base'

class RPSApp < Sinatra::Base
  get '/' do
    erb(:registration)
  end
end

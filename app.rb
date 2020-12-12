require 'sinatra/base'

class RPS < Sinatra::Base

    get '/' do
        erb(:home)
    end
    
end
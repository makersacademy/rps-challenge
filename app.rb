require 'sinatra'

class RPS < Sinatra::Base

    get '/' do
        erb :homepage
    end
    
end
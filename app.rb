require 'sinatra/base'

class RockPaperScissort < Sinatra::Base
    get '/' do
        erb :index
    end
end
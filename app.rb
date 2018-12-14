require 'sinatra/base'

class Game < Sinatra::Base

    get '/' do
       "Rock, Paper, Scissors!"
    end
end
require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    "Rock, Paper, Scissors!"
    erb(:index)
  end

  post '/name' do

  end

end

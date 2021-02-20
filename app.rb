require 'sinatra/base'

class RpsGame < Sinatra::Base
  get '/' do
    "Welcome to rock, paper, scissors!"
  end
end

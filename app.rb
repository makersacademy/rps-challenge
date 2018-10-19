require 'sinatra/base'

class RPSGame < Sinatra::Base
  get "/" do
    erb :index
  end
end

require 'sinatra'
require 'sinatra/base'

class RPSGame < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

end
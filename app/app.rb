require 'sinatra/base'


class RPSLS < Sinatra::Base


  get '/' do
    erb :index
  end


end
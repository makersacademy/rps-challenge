require 'sinatra'

class Rps < Sinatra::Base

  get '/' do
    erb :form
  end

end

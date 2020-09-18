require 'sinatra'

class Rps < Sinatra::Base

  get '/' do
    #create game object
    erb :name_form
  end

end

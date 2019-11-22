require 'sinatra/base'
class RPSController < Sinatra::Base

  enable :sessions  #Enables use of session[:hash] for storing data

  get '/' do
    erb :index
  end

end

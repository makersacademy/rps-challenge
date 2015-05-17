require 'sinatra/base'

class RockPaperScissorsWeb < Sinatra::Base

  get '/' do
    erb :index
  end

end
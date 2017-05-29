require 'sinatra/base'

class RockPaperScissiors < Sinatra::Base

  get '/' do
    erb :index
  end

end

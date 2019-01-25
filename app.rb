require 'sinatra'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

end

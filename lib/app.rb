require 'sinatra/base'

class rps < Sinatra::Base
  get '/' do
    'Rock Paper Scissors, Lets start!!'
  end


  run! if app_file == $0
end 

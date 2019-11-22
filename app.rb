require 'sinatra'
require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
   'Hello Players!'
  end

  # post '/names' do
  #
  # end
  run! if app_file == $0
end

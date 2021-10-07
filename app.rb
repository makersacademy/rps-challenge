require 'sinatra/base'
require 'sinatra/reloader'
require 'rack'

class RockPaperScissors < Sinatra::Base

  get ('/') do
    # "Welcome to Rock Paper Scissors!"
    erb :index
  end

  run! if app_file == $0

end

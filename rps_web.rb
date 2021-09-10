require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end
  
    get '/' do
      'Rock Paper Scissors Game!'
    end
  
    run! if app_file == $0
  end
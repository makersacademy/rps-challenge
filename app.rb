require 'sinatra/base' 
require './lib/rps.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

    get '/' do
      erb :index
    end

    run! if app_file == $0
end

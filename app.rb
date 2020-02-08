require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

    get '/' do
        "testing infrastructure"
        erb(:index) 
    end

    run! if app_file == $0 

end



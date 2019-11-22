require 'sinatra'

class RockPaperScissors < Sinatra::Base

    get '/' do
      erb :index
    end

    post '/registered' do
      
    end

    run! if app_file == $0

end

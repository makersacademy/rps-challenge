require 'sinatra/base'
require './lib/game'
class RockPaperScissors < Sinatra::Base
    enable :sessions
    get '/' do
        erb :index
    end



    get '/names' do
      
    end




    run! if app_file == $0
end

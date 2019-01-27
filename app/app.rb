require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    @name = params[:name]
    erb :weapons    
  end

  run! if app_file == $0
end

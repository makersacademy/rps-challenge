require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :form
  end

  post '/name' do
    p params
    @player_name = params[:player_name]
    erb :play
  end


#Start the server if this file is executed directly (don't change the line below)
run! if app_file == $0
end

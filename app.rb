require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :welcome
  end

  post '/names' do 
    "Welcome, #{params["player_name"]}!"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

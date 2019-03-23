require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get "/" do
    erb(:index)
  end

  run! if app_file == $0
end

# To run -> ruby app.rb
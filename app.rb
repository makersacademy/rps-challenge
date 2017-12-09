require 'Sinatra/Base'

class RockPaperScissors < Sinatra::Base

  get "/" do
    "Hello Rock Paper Scissors!"
  end

  run! if app_file == $0
end

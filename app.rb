require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    'Welcome to the best Rock Paper Scissors game you have ever seen!'
  end

  run! if app_file == $0
end
require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    'Rock, Paper, Scissors Game'
  end

  run! if app_file == $0
end

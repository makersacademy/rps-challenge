require 'sinatra/base'

class RockPaperSciccors < Sinatra::Base
  get '/' do
    'Welome to Rock, Paper, Scissors!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

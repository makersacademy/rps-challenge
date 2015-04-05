require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    'Hello Rock_paper_scissors!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end

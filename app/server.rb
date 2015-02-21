require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    " <a href='/new_game'>New Game</a> "
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

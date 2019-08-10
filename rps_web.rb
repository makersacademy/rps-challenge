require 'sinatra/base'

class RPSWeb < Sinatra::Base

  get '/' do
    "Welcome to rock, paper, scissors!"
    "To start the game, please enter your name:"
  end

  # start the server if ruby file executed directly
  run! if app_file ==$0

end

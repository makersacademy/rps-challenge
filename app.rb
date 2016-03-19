require 'sinatra/base'

class Rpsls < Sinatra::Base

  get '/' do
    'Welcome to Rock Paper Scissor Lizard Spock!'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

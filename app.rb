require 'sinatra/base'

class RubyPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  run! if __FILE__ == $PROGRAM_NAME
end
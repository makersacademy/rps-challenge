require 'sinatra/base'

class Fight < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello World'
  end

    run! if __FILE__ == $PROGRAM_NAME
  end

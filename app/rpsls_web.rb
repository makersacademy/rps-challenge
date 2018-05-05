require 'sinatra/base'


class RPSLSWeb < Sinatra::Base

  enable :sessions

  helpers do

  end

  before do

  end

  get '/' do
    "Getting Set Up"
  end

  run! if __FILE__ == $0

end

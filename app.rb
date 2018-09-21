require 'sinatra/base'


class RPS < Sinatra::Base

  get '/' do
    "Rock Paper Scissors"
  end

end
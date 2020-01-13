require 'sinatra/base'


class RPS < Sinatra::Base
  get '/' do
    "This is a RPS game"
  end

end


run RPS.run!

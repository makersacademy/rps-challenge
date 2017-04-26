require 'sinatra/base'

class RPS < Sinatra::Application
  get '/' do
      "Hello World!"
  end
end

require 'sinatra/base'


class Rps < Sinatra::Base
  get '/' do
    "This is a RPS game -- update"
  end
run! if app_file == $0
end

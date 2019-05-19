require 'sinatra/base'


class Rps < Sinatra::Base
  get '/' do
    'Hello RPS'
  end
end
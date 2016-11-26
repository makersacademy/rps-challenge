require 'sinatra/base'

class Rsp < Sinatra::Base
  get '/' do
    'Wellcome RSP dojo!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

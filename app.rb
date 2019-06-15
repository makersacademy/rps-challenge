require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    "Hello, World!"
  end

  # this will start the server automatically if the app.rb file is run in the
  # command line with `ruby app.rb` :)
  run! if app_file == $0
end

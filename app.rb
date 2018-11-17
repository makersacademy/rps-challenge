require 'sinatra/base'
require 'capybara'

Capybara.app

class RPS < Sinatra::Base

  get '/' do
    "Hello!!"
  end

run! if app_file == $0

end

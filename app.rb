require 'sinatra/base'
require 'capybara'

Capybara.app

class RPS < Sinatra::Base

  get '/' do
    "Hello!!"
  end


end

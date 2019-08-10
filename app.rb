require 'sinatra/base'
require 'sinatra'
require 'capybara/dsl'
require 'selenium-webdriver'

class RPS < Sinatra::Base

 enable :sessions


  get '/' do
    erb :index
  end

  post '/name' do
    "Hello World"

  end




  run! if app_file == $0
  set :session_secret, 'super secret'

end
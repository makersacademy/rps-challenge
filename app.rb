require 'sinatra'
require 'sinatra/reloader'


class Rps < Sinatra::Application
  get '/' do
    erb(:test)
  end  
  
end  
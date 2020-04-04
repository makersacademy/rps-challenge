require 'sinatra/base'
class Game < Sinatra::Base

  get '/' do 
    'welcome to rock paper scissors'
  end 

  run if app_file == $0
end 
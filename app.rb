require 'sinatra/base'
 
class RPS < Sinatra::Base
  get '/' do
    'Welcome to Rock, Paper, Scissors game!'
  end
end

require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    "<div style='border: 3px solid black; padding-left: 20px'>
    <h1>Hello Rock, Paper and Scissors!</h1>
   </div>"
  end
end

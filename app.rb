require 'sinatra'

class Rps < Sinatra::Base

  get '/test' do
    'Testing infrastructure working!'
  end

end

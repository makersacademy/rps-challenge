require 'sinatra/base'

class RPS < Sinatra::Base

  get('/') do
    erb(:splash)
  end

end

require 'sinatra/base'

class RPS < Sinatra::Application
  get ('/') do
    erb :home
  end

  get ('/game') do
    erb :game
  end
end

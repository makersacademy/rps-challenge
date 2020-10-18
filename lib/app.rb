require 'sinatra/base'
require 'shotgun'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/names' do
    play(:erb)
  end
end
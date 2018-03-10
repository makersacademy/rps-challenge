require "sinatra"
require 'sinatra/base'


class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    redirect('/play')
  end

end

require 'sinatra/base'
require './lib/marketer.rb'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    @marketer = Marketer.new(params[:name])
    erb(:play)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

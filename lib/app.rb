require 'sinatra/base'
require './lib/marketer.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    @marketer = Marketer.create(params[:name])
    erb(:play)
  end

  post '/result' do
    p params
    @choice = params[:choice]
    @computer = Computer.new
    @marketer = Marketer.marketer
    erb(:result)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

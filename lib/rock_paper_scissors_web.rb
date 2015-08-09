require 'sinatra/base'
require './lib/game'

class Rps_challenge < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views")}

  get '/' do
    'Hello rps-challenge!'
    erb :home
  end

  get '/SignIn' do
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

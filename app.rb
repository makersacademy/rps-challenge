require 'sinatra/base'
require 'haml'
require 'rspec'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    haml :index
  end

  post '/name' do
    @player_1_name = params[:player_1_name]
    haml :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

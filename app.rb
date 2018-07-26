require 'sinatra/base'
require 'sinatra'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_name = params[:player_name]
    erb(:play)
  end

  # start the server when 'ruby app.rb' is executed in terminal
  run! if app_file == $0

end

require 'sinatra/base'

class Rps < Sinatra::Base
  set :sessions, true

  get '/' do
    erb(:index)
  end

  post '/names' do
    human_player = Player.new(params[:human_player])
    redirect 'play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

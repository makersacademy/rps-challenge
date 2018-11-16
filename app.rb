require 'sinatra/base'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    p params
    @player = Player.new(params[:player_name])
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = Player.new(params[:player_name])
    puts @player
    erb(:play)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

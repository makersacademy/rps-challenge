require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:name_1])
    player_2 = Player.new(params[:name_2])
    # @game = Game.create()
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

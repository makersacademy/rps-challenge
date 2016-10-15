require 'sinatra/base'

class Rps < Sinatra::Base


  get '/' do
    erb :index
  end



  post '/names' do
    erb :names
    #player_1 = Player.new(params[:player_1_name])
    # player_2 = Player.new(params[:player2_name])
    # automate = params[:player2_name].empty?
    # @game = Game.create(player1, player2, automate)
    #redirect '/play'
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra/base'

class Rpsgame < Sinatra::Base

  configure do
    set :session_secret, "awonkywillawentaway"
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player])
    player_2 = Computer.new
    @game = Game.new(player_1,  player_2)
    redirect '/play'
  end

end

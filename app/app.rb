require 'sinatra/base'

class RpsWeb < Sinatra::Base

run! if app_file == $0

  get '/' do
    erb :index
  end
=begin
  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    erb :play
  end
=end



end

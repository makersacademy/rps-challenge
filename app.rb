require 'sinatra/base'


class Mama < Sinatra::Base
  enable :sessions

  get '/' do
    erb :welcome
  end

  post '/entry' do
    player1 = Player.new(params[:player1])
    
  end
end

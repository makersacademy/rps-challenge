require 'sinatra/base'

class Fight < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    erb :play
  end

    run! if __FILE__ == $PROGRAM_NAME
  end

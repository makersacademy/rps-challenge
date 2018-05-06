require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post'/names' do
    @player_one_name = params[:p1_name]
    erb(:play)
  end

end

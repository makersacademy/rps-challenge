require 'sinatra/base'
 
class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/play' do
    @player1_name = params[:player1_name]
    erb(:play)
  end
end

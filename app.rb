require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions

get '/' do
  @player1_name = params[:player1_name]
  erb(:index)
end

end

require 'sinatra'

# before do
#   @game = Game.access_game
# end

class Rps < Sinatra::Base
  # enable :sessions
  get '/' do
    erb(:index)
  end

end

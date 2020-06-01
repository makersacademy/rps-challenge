# require 'sinatra'
#
# get '/' do  # INDEX ROUTE
#   erb :index
# end                       # All is block, GET is method, / is PATH
#
# get '/game' do
#   'That is the game, my friend.'
# end


require 'sinatra/base'

class Game < Sinatra::Base
  get '/' do
    'Hello Battle!'
  end

  get '/game' do
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end



# set :session_secret, 'super secret' # ?????
#
# get '/secret' do
#   'That is the secret game.'
# end
# run! if app_file == $0

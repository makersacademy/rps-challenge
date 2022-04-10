require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player_name = 'player_name'
    erb(:index)
  end

# get '/rockpaperscissors' do
#   @rps = ["Rock", "Paper", "Scissors"].sample
#   erb(:index)
# end

  run! if app_file == $0
end

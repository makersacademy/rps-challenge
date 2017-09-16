require 'sinatra/base'
require 'database'

class RPS < Sinatra::Base

  enable :sessions

  database = PlayerDatabase.new

  get '/' do
    @player_2_name = database[0].name
    erb(:index)
  end

  run! if app_file == $0

end

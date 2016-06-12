require 'sinatra/base'
require './lib/game'
require './lib/startup'


class RPSApp < Sinatra::Base
  get '/' do
    Game.create(Startup::WEAPONS)
    erb(:index)
  end

  post '/enter-name' do

  end

  run! if app_file == $PROGRAM_NAME
end

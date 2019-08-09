require 'sinatra/base'
require 'sinatra/reloader'
require_relative '../lib/game.rb'

class Rochambeau < Sinatra::Base
  enable :sessions
  register Sinatra::Reloader

  WELCOME = 'Welcome to Rochambeau'.freeze

  get '/' do
    erb(:index)
  end

  run! if app_file == $PROGRAM_NAME
end

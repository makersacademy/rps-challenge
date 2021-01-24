# frozen_string_literal: true

require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require './lib/play'
require './lib/player'

# The Game class is the main game class.
class Game < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:homepage)
  end

  get '/play' do
  end
end

require 'sinatra/base'
require_relative '../lib/player.rb'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

end
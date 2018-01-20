require 'sinatra/base'
require_relative '../lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/choice' do
    @player = Player.new(params[:player_name])
    erb :choice
  end
end

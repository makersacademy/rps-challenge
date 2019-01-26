require 'bundler/setup'
require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  set :views          , File.expand_path('../lib/views', __FILE__)
  set :public_folder, File.dirname(__FILE__)

  @@player

  get ('/') do
    erb(:index)
  end

  post('/name') do
    @@player = Player.new(params[:player_name])
    redirect '/play'
  end

  get ('/play') do
    @player_name = @@player.name
    erb(:play)
  end

end

# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  configure :development, :test do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  get '/feature_test_env' do
    erb :feature_test_env
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params['player_1_name']), Player.new('Computer'))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end
end

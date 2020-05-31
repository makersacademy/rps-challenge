# frozen_string_literal: true

require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    erb :names
    # $player1 = Player.new(params[:player1])
    # $player2 = Player.new(params[:player2])
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $PROGRAM_NAME
end

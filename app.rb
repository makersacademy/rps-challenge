require 'sinatra/base'
require './lib/computer'

class RPSapp < Sinatra::Base

  enable :sessions

  get '/' do
    'Testing'
    erb :index
  end

  post '/names' do
    @p1_name = params[:player_1_name]
    erb :play
  end

  post '/go' do
    @p1_move = params[:move]
    @cp_move = Computer.go
    erb :go
  end

  run! if app_file == $0

end

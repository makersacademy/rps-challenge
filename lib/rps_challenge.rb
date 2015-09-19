require 'sinatra/base'

class Rps_Challenge < Sinatra::Base
  set :views, proc {File.join(root,'..','/views')}

  enable :sessions

  before do
    require_relative 'rps_helper'
  end

  get '/' do
  erb :index
  end

  get '/new_game' do
  $name = params[:name]
  erb :new_game
  end

  get '/new_session' do
  erb :new_session
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
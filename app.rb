require 'sinatra/base'
require_relative './lib/rps'

class RpsApp < Sinatra::Base
  set :session_secret, 'secret sessions be secret'
  enable :sessions

  before do
    @game = RPS.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = RPS.create(params[:player_1])
    redirect '/play'
  end
end

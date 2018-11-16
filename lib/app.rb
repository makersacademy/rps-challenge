require "sinatra/base"
require "game"

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get "/" do
    erb :index
  end

  post '/choice' do
    p params
    @game = Game.create()
    redirect ''
  end
end

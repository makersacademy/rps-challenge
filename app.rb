require 'sinatra'
require './lib/game'

class RPSWeb < Sinatra::Application

  get '/' do
    erb(:index)
  end

  post '/play' do
    @val = params[:weapon]
    erb(:outcome)
  end

end

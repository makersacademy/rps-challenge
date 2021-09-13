require 'sinatra'
require 'sinatra/reloader' if development?

class Rock_paper_scissors <Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/' do
    'hello'
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end

run! if app_file == $0
end


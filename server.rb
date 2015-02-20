require 'sinatra/base'

class Rock_paper_scissors < Sinatra::Base
  get '/' do
    'Hello rock_paper_scissors!'
  end

  get '/player' do

  end

  get '/game' do

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

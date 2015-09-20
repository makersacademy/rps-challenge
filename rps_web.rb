require 'sinatra'

class RPSWeb < Sinatra::Base

  enable :sessions

set :views, proc { File.join(root, 'views') }


get '/' do
  erb :name_form
end

get '/game' do
  @name = params[:name]
  erb :game
end

end
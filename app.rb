require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
get '/' do
  erb :index
end

get '/singleplayer' do
  erb :singleplayer
end
end

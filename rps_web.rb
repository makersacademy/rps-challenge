require 'sinatra'
require './lib/game.rb'

class RPSWeb < Sinatra::Base

enable :sessions

$game = Game.new

set :views, proc { File.join(root, 'views') }


get '/' do
  erb :name_form
end

get '/game' do
  @name = params[:name]
  erb :game
end

get '/result' do
  $choice = params[:choice]
  $choiceTest = $choice.to_s
  erb :result
end

end
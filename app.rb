require "sinatra/base"
require "sinatra"
require "./views/game.rb"

enable :sessions

class Rps < Sinatra::Base

get '/' do

  erb :index

end

post '/names' do
  @first_name = params[:first_name]
  @last_name = params[:last_name]

  erb :play
#redirect '/play'
end

post '/play' do
  
  @choice = params[:choice]
  @game = Game.new(@choice)
  @result = @game.output
  @random = @game.random

erb :play
end

run! if app_file == $0
end

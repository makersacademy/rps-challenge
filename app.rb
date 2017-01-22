require "sinatra/base"
require "sinatra"
require "./views/game.rb"
require "./views/player.rb"

enable :sessions

class Rps < Sinatra::Base

get '/' do

  erb :index

end

post '/names' do
  @@player = Player.new(params[:first_name],params[:last_name])
   @first_name = @@player.first_name
   @last_name = @@player.last_name
   erb :play
#redirect '/play'
end

post '/play' do
  @first_name = @@player.first_name
  @last_name = @@player.last_name
  @choice = params[:choice]
  @game = Game.new(@choice)
  @result = @game.output
  @random = @game.random

erb :play
end

run! if app_file == $0
end

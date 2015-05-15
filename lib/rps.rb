require 'sinatra'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Base
set :views, Proc.new { File.join(root, "..", "views") }
set :public_folder, 'public'

  @@game = Game.new(Player)

  get '/' do
    erb :start_page
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

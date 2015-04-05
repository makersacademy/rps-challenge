require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class RockPaperScissors < Sinatra::Base
	set :public_folder, Proc.new { File.join(root, "public") }
	set :views, Proc.new {File.join(root, "..", "views") }
  
  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

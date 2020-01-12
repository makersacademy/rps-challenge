require 'sinatra/base'


class Battle < Sinatra::Base
  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, "views") }
  set :public_folder, Proc.new { File.join(root, "../public") }



  # # before filters
  # before do
  #   @game = Game.game_instance
  # end

  # start the server if ruby file executed directly
  run! if $0 == __FILE__
end

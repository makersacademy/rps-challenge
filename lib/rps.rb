require 'sinatra/base'
require_relative 'game'

class RPS < Sinatra::Base

  set :views, proc { File.join(root, '..','views') }

  # start the server if ruby file executed directly
  run! if app_file == $0


  get '/' do
  	$game = Game.new
    erb :index
  end

  get '/make_choice' do
    @name = params[:name]
    erb :make_choice
  end

  get '/outcome' do
    @choice = params[:Option]
    @cpu = Cpu_player.new
    @cpu_choice = @cpu.cpu_choice
    erb :outcome
  end



end

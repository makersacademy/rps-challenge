require 'sinatra/base'
require "./lib/player.rb"
require "./lib/computer.rb"
require "./lib/game.rb"
require "./lib/logic.rb"

class RPS < Sinatra::Base


  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = Player.new(params[:player_name])
    @game = Game.create(@player)
    erb(:play_rps)
  end

  before do
    @game = Game.instance
  end

  post "/rock" do
    redirect to('/rock-selected')
  end

  post"/scissors" do
    redirect to('/scissors-selected')
  end

  post"/paper" do
    redirect to("paper-selected")
  end

  get '/rock-selected' do
    erb(:rock_selected)
  end

  get "/paper-selected" do
    erb(:paper_selected)
  end

  get "/scissors-selected" do
    erb(:scissors_selected)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

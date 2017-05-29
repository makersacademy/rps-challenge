require "sinatra/base"
require_relative "./lib/player.rb"
require_relative "./lib/computer.rb"

class RPSWeb < Sinatra::Base
  enable :sessions

  get "/infrastructure_testing" do
    "Hello RPSWeb!"
  end

  get "/" do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('/play')
  end

  get "/play" do
    @player = Player.new(session)
    @computer = Computer.new
    @defeats = {:rock => :paper, :paper => :scissors, :scissors => :rock}
    erb :play
  end

  post "/play" do
    session[:choice] = params[:choice]
    redirect("/play")
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

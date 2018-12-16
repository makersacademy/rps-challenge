require 'sinatra/base'



class Rps  < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end 

  post '/name' do 
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do 
    erb(:name)
  end

  get '/rock' do
    erb(:rock)
  end
  
end
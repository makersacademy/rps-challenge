require 'sinatra/base'
require_relative 'human'

class App < Sinatra::Base
  set :sessions, true
  enable :sesssions

  get '/' do
    erb :index
  end

  post '/names' do
    human_name = params[:name]
    @human = Human.new_human_player(human_name)
    redirect '/play'
  end

  before do
    @human = Human.now
  end

  get '/play' do
    erb :play
  end

  get '/rock' do
    @human.rock
    erb :rock
  end

  get '/paper' do
    @human.paper
    erb :paper
  end

  get '/scissors' do
    @human.scissors
    erb :scissors
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

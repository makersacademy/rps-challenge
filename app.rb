require 'sinatra/base'
require_relative 'lib/user'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/sign_in' do
    User.create(params[:name])
    redirect '/games'
  end

  get '/games' do
    @user = User.instance
    erb(:games)
  end

  get '/rock_paper_scissors' do
    @user = User.instance
    erb(:rock_paper_scissors)
  end

end

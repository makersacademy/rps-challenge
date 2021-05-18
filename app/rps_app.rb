require 'sinatra/base'
require 'sinatra/reloader'
require_relative '../lib/RPS'

class RPSapp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  

  get '/' do
    erb(:index)
  end

  post '/selection' do
    p params
    @name = params[:name]
    @selection = params[:selection]
    # @rps = RPS.instance
    # @cpu = @rps.rock_paper_scissors
    @player2_selection = RPS.instance.rock_paper_scissors

    erb(:results)
  end

  post '/back' do
    erb :index
  end
end
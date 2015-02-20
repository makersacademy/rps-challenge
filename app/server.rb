require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  set :views, Proc.new {File.join(root, "..", "views")}
  enable :sessions

  get '/' do
    erb :index
  end
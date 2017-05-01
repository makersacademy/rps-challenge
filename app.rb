require 'sinatra/base'


class RPS_Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

end

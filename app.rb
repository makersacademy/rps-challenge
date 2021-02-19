require 'sinatra'

class RockPaperScissors < Sinatra::Base
  configure do
    enable :sessions
    set    :session_secret, ENV['SESSION_SECRET']
  end

  get '/' do

  end
end

require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  Capybara.app = RockPaperScissors


end

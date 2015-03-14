require 'sinatra'
require 'sinatra/partial'
require 'objspace'
require 'thin'

require_relative 'models/game'
require_relative 'models/player'
require_relative 'models/computer'

require_relative 'controllers/application'
require_relative 'controllers/one_player'
require_relative 'controllers/two_player'

require_relative 'helpers/application.rb'

enable :sessions
set :session_secret, 'super secret'

use Rack::MethodOverride
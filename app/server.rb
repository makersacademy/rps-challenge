require 'sinatra'
require 'sinatra/partial'
require 'objspace'

require_relative 'models/game'
require_relative 'models/player'
require_relative 'models/computer'

require_relative 'controllers/application'
require_relative 'controllers/one_player_enter_name'
require_relative 'controllers/one_player_game'

require_relative 'helpers/application.rb'

enable :sessions
set :session_secret, 'super secret'

use Rack::MethodOverride
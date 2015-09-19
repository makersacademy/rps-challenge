require './lib/game'    # ~> LoadError: cannot load such file -- ./lib/game
require './lib/player'


game = Game.new(Player.new("Matt"))

# ~> LoadError
# ~> cannot load such file -- ./lib/game
# ~>
# ~> /Users/matt/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/2.1.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/matt/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/2.1.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/matt/Dropbox/Projects/w3/rps-challenge/game_setup.rb:1:in `<main>'

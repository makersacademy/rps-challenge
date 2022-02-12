require_relative './results.rb'

class StartGame

# attr_reader :player

  # def initialize(player, move)
    # @player = player
    # @move = move
    # check_result
  # end

  def random_move
    ["Rock","Paper","Scissors"].sample
  end

end

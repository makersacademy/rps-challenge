class Game
  attr_reader :player_one, :player_two
  def initialize(first:, second:"evil computer class goes here")
    @player_one = first
    @player_two = second
  end
end
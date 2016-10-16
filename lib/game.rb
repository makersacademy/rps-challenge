require_relative 'player'


class Game do

  class << self; attr_accessor :begin end

  def self.begin(player1)
    @game = Game.new(player1)
  end

  attr_reader :player

  def initialize(player1)
    @player = Player.new(player1)
  end

end

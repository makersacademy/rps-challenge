class Player

  attr_reader :name
  attr_accessor :move

  def initialize(name)
    @name = name
  end

  # FIX ME
  # def self.create(name)
  #   @players = Players.new(name)
  # end
  #
  def self.all
    ObjectSpace.each_object(self).to_a.reverse
  end
end

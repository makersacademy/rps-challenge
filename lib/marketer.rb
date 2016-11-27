class Marketer

  def self.create(name)
    @marketer = Marketer.new(name)
  end

  def self.marketer
    @marketer
  end

  attr_reader :name

  def initialize(name)
    @name = name
  end
end

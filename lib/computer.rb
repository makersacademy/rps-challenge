class Computer

  attr_reader :choice

  OPTIONS = [:rock, :paper, :scissors].freeze

  def attack
    @choice = OPTIONS.sample
  end
end

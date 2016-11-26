class Human

  @human

  def self.new_human_player(human_name)
    @human = Human.new(human_name)
    return @human
  end

  def self.now
    @human
  end







  attr_reader :name

  def initialize(human_name)
    @name = human_name
  end

end

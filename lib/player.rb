class Player
attr_reader :choice_log, :name
  def initialize(name)
    @choice_log = []
    @name = name
  end

  def pretty_log
    choice_log.join(' ')
  end

  def last_choice
    choice_log.last
  end
end

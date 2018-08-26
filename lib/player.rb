class Player
attr_reader :choice_log, :name
  def initialize(name)
    @choice_log = []
    @name = name
  end

end

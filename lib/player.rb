class Player

attr_reader :name
attr_writer :choice

  def initialize(name)
    @name = name
  end

  def choice
    @choice
  end


end
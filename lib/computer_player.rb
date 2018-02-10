class ComputerPlayer

  attr_reader :name

  def initialize(name = 'Hal9000', move_list)
    @name = name
    @move_list = move_list
  end

  def move
    move_list.sample
  end

  private

  attr_reader :move_list

end

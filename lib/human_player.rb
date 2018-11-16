class Human_Player
  attr_reader :name, :selected_move

  def initialize(name)
    @name = name
    @selected_move = ""
  end

  def move(selected_move)
    @selected_move = selected_move
  end

end

class Game

  def initialize(player = Player.new("Mystery Player"))
    @player = player
  end

  def view_choices
    @choices = [:Rock, :Paper, :Scissors]
  end

  def player_selection(selection)
    @player_selection = selection
  end

end

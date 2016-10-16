class Game

  attr_reader :comp

  OPTIONS = [:rock, :paper, :scissors]

  def comp_choice
    (OPTIONS.sample)
  end

  @comp = self.comp_choice

  def rock
    if @comp == :rock
      "drew"
    elsif @comp == :paper
      "lost"
    else
      "won!"
    end
  end
end

game = Game.new
@comp = game.comp_choice
p game.rock

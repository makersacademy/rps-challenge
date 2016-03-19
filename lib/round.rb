class Round

attr_reader :choices, :outcome

RULES = {rock: :scissors,
         paper: :rock,
         scissors: :paper}

  def initialize(player1, player2)
    @choices = []
    @player1 = player1
    @player2 = player2
    @winner = nil
    @outcome = []
  end

  def player1_turn(choice)
    @choices << @player1.choose(choice)
  end

  def player2_turn
    @choices << @player2.choose
  end

  def outcome
    @outcome << self.beats?(@choices[0],@choices[1])
    @outcome << self.beats?(@choices[1],@choices[0])
    @outcome
  end

  def winner
    draw? == true ? @winner = "Draw" : @winner = outcome_win?
    @winner
  end

  def outcome_win?
    @outcome[0] == true ? @player1.name : @player2.name
  end

  def beats?(weapon1,weapon2)
    RULES[weapon1] == weapon2 ? true : false
  end

  def draw?
    outcome
    @outcome[0] == @outcome[1] ? true : false
  end
end

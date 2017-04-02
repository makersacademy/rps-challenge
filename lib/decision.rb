class Decision

  attr_reader :outcome

  PERM = [['Rock', 'Scissors'], ['Scissors', 'Paper'], ['Paper', 'Rock']]

  def initialize(playerchoice, machinechoice)
    if playerchoice == machinechoice
      @outcome = :draw
    elsif PERM.include?([playerchoice, machinechoice])
      @outcome = :playerwin
    elsif PERM.include?([machinechoice, playerchoice])
      @outcome = :playerlose
    else
      @outcome
    end
  end

private


end

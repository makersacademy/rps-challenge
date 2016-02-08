class Game

  def play(choice_as_string)
    computer = Weapons.new(['rock', 'paper', 'scissors'].sample)
    choice = Weapons.new(choice_as_string)
    result = 'tied'
    result = 'won' if choice.beats?(computer)
    result = 'lost' if computer.beats?(choice)
    result
  end

end

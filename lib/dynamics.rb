module Dynamics

  def winner? player
    win player
  end

  def tied? player
    player.choice == player.opponent.choice
  end

  def choice_to_number player
    to_convert = player.choice
    options.index(to_convert)
  end

  def win player

    your_number = choice_to_number(player)
    opponents_number = choice_to_number(player.opponent)
    # If all options are ordered such that, when wrapped circularly,
    # each option beats half the remaining elements counter clockwise and loses
    # to the other half clockwise then the logic states that
    # (your choice - opponents choice) modulus the number of choices is greater
    # than 0 and less than or equal to the number of choices divided by two.
    # Thus, if the last line of the method rock_paper_scissors is true then you have won.
    (your_number - opponents_number) % options.count > 0 &&
    (your_number - opponents_number) % options.count <= options.count / 2

  end


end

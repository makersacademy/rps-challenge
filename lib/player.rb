class Player

  def play what_to_play
    if what_to_play == :auto
      return [:Rock, :Paper, :Scissors].select
    else
      return what_to_play
    end
  end

end

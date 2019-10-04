
def game(move1, move2)
  if move1 == move2
    return "It's a tie!"
  elsif move1 == "Paper"
    if move2 =="Rock"
      return "#{$humanplayer.name} wins!"
    else
      return "#{$computerplayer.name} wins!"
    end
  elsif move1 == "Rock"
    if move2 =="Scissors"
      return "#{$humanplayer.name} wins!"
    else
      return "#{$computerplayer.name} wins!"
    end
  elsif move2 == "Rock"
    if move1 =="Scissors"
      return "#{$computerplayer.name} wins!"
    else
      return "#{$humanplayer.name} wins!"
    end
  elsif move2 == "Paper"
    if move1 =="Rock"
      return "#{$computerplayer.name} wins!"
    else
      return "#{$humanplayer.name} wins!"
    end
  end
end

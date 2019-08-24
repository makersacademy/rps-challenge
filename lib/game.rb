class Game
  def result(p1w, p2w)
    puts p1w
    puts p2w
    if p1w == p2w
      return 'draw'
    elsif (p1w == 'rock' && p2w == 'scissors') ||
      (p1w == 'paper' && p2w == 'rock') ||
      (p1w == 'scissors' && p2w == 'paper')
      return 'win'
    elsif (p1w == 'rock' && p2w == 'paper') ||
      (p1w == 'paper' && p2w == 'scissors') ||
      (p1w == 'scissors' && p2w == 'rock')
      return 'lose'
    end
  end
end

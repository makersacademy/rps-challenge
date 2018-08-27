class Game

  def initialize(player)
    @player = player
  end

  def ai_choice
    ['Rock', 'Paper', 'Scissors'].sample
  end
end

# srand(67809)
#
# <form action="/flipped_struggle" method="post">
#   Struggle: <input type="text" name="struggle" />
#   <input type="submit" value="Flip table">
# </form>

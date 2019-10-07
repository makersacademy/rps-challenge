class Rps
  # attr_reader :choice1, :choice2
  # def initialize(player_1_name, choice1, player_2_name, choice2)
  #   @choice1 = choice1
  #   @choice2 = choice2
  #   @player_1_name = player_1_name
  #   @player_2_name = player_2_name
  # end

  def run(player_1_name, choice1, player_2_name, choice2)
    p result = "#{choice1}#{choice2}".downcase
    case result
    when "rockrock"
        "It's a draw"
      when "rockpaper"
        "#{player_2_name} wins"
      when "rockscissors"
        "#{player_1_name} wins"
      when "paperpaper"
        "It's a draw"
      when "paperrock"
        "#{player_1_name} wins"
      when "paperscissors"
        "#{player_2_name} wins"
      when "scissorsrock"
        "#{player_2_name} wins"
      when "scissorspaper"
        "#{player_1_name} wins"
      when "scissorsscissors"
        "It's a draw"
      else
        "I have no idea what to do with that."
      end
  end


end

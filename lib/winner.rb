class Winner
  def initialize
    @weapons = {
      "Rock" => 1,
      "Paper" => 2,
      "Scissors" => 3 }
  end

  def result(weapon_1, weapon_2)
    difference = @weapons[weapon_1] - @weapons[weapon_2]
    if [1, -2].include?(difference)
      :Won!
    elsif difference.zero?
      :Draw!
    else
      :Lost!
    end
  end

end

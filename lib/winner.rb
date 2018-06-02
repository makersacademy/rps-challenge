class Winner
  def initialize
    @weapons = {
      "Rock" => 1,
      "Paper" => 2,
      "Scissors" => 3 }
  end

  def result(weapon_1,weapon_2)
    difference = @weapons[weapon_1] - @weapons[weapon_2]
    if difference == 1|| difference == -2
      :Won!
    elsif difference == 0
      :Draw!
    else
      :Lost!
    end
  end

end

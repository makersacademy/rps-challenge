class Winner
  def initialize
    @ranking = {
      "Rock" => ["Scissors", "Capybara"],
      "Paper" => ["Rock", "Capybara"],
      "Scissors" => ["Paper", "Capybara"],
      "Capybara" => []
    }
  end

  def result(weapon_1, weapon_2)
    if weapon_1 == weapon_2
      :Draw!
    elsif beats?(weapon_1,weapon_2)
      :Won!
    else
      :Lost!
    end
  end

  private

  def beats?(weapon_1, weapon_2)
    @ranking[weapon_1].include?(weapon_2)
  end

end

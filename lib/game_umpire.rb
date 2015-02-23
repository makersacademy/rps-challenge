class GameUmpire


  RESULTS = {
    [:rock, :scissors] => :rock,
    [:paper, :rock] => :paper,
    [:paper, :scissors] => :scissors
      }

  def rule_logic(weapons)
    played_weapons = weapons.sort
    return :draw if played_weapons.all?{|weapon| weapon == played_weapons[0]}
    weapons_compare(played_weapons)
  end

  def weapons_compare(played_weapons)
    RESULTS.each_pair do |weapons, result|
      return result if played_weapons == weapons
      end
  end

end
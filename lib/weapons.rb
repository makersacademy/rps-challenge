# contains a list of weapons players can use

module Weapons

  HASH = {
    rock: :paper,
    paper: :scissors,
    scissors: :rock,
  }

  def Weapons.list
    HASH
  end

  def Weapons.random
    Weapons.list.keys.sample
  end

end

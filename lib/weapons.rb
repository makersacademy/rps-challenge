# contains a list of weapons players can use

module Weapons

  LIST = [:rock, :paper, :scissors]

  def Weapons.list
    LIST
  end

  def Weapons.random
    Weapons.list.sample
  end

end

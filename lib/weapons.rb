# contains a list of weapons players can use

module Weapons

  LIST = [:rock, :paper, :scissors]

  def Weapons.random
    LIST.sample
  end

end

class Weapon

  attr_reader :name, :targets

  def initialize(name = :missingno, targets = [])
    @name = name
    @targets = targets
  end

  def title
    @name.to_s.capitalize
  end

end

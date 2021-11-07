class Weapon

  attr_reader :name, :targets, :image

  def initialize(name = :missingno, targets = [], image = "n/a")
    @name = name
    @targets = targets
    @image = image
  end

  def title
    @name.to_s.capitalize
  end

end

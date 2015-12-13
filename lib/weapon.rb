class Weapon

  attr_reader :item

  def initialize(item)
    @item = item.to_sym
  end

end

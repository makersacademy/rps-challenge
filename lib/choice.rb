class Choice
  attr_reader :item

  def initialize n
    @item = n.to_sym
  end
end

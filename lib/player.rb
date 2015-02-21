class Player

  attr_accessor :name

  def pick(option)
    option.to_sym
  end

end
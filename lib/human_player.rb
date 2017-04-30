class HumanPlayer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def choice(arg)
    arg.downcase.to_sym
  end

  def sym_name
    name.downcase.gsub(/ /, "_").to_sym
  end

end

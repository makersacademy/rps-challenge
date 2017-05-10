class HumanPlayer
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def set_choice(arg)
    self.choice = arg.downcase.to_sym
  end

  def print_choice
    choice.capitalize.to_s
  end

  def sym_name
    name.downcase.gsub(" ", "_").to_sym
  end

  private
  attr_writer :choice

end

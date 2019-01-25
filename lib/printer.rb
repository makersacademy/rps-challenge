class Printer
  attr_reader :name, :conclusions
  def initialize(name)
    @name = name
    @conclusions = {
      Win: "Congratulations #{name}, you won!",
      Draw: "It's a draw!",
      Loose: "Unlucky #{name}, looks like you lost!"
    }
  end

  def print_result(result)
    conclusions[result.to_sym]
  end
end

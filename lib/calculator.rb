class Calculator

  def compare(first, second)
    return :tie if first == second
    first_before_second?(first, second)
    (first + second).even? ? translate(in_order) : translate(!in_order)
  end

  private

  attr_reader :in_order

  def translate(value)
    value ? :win : :lose
  end

  def first_before_second?(first, second)
    @in_order = first < second
  end

end
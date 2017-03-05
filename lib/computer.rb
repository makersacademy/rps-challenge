class Computer

  def initialize(options)
    @name = :computer
    @options = options
  end

  def option
    @options.sample
  end

end

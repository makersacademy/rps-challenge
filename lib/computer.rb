class Computer

  def choice
    options[rand(2)]
  end

  private

  def options
    ['rock','paper','scissors']
  end

end

# Choice class
class Choice
  def initialize(name, win, img)
    @name = name
    @win = win
    @img = img
  end

  def name
    @name.dup
  end

  def win
    @win.dup
  end

  def img
    @img.dup
  end
end

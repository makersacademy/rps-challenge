class Computer

  attr_accessor :shapes

  def shape_choice
    @shapes = ['rock', 'paper', 'scissors'].sample
    @shapes = shapes
  end
end
# frozen_literal_string: true

class Computer
  def random_gesture
    %w[rock paper scissors][rand(0..2)]
  end
end
